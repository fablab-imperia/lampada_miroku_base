/*
3D printable base for a CNC milled lamp
Copyright ©2021 Massimo Gismondi

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.

*/

module base(basi, basi_sopra, altezza)
{
translate([-basi[0]/2, -basi[1]/2, 0])
//translate([0, 0, 0])
{
    epsilon = 0.01;
    
    union(){
        base_x = basi[0];
        base_y = basi[1];
        base_altezza = altezza;
        
        top_base_x = basi_sopra[0];
        top_base_y = basi_sopra[1];
        
        scarto_x = top_base_x - base_x;
        scarto_y = top_base_y - base_y;
        
        base_move_x_base = scarto_x/5;
        
        polyhedron(
        [
            [0-base_move_x_base, 0, 0],
            [0-base_move_x_base, base_y, 0],
            [base_x-base_move_x_base, base_y, 0],
            [base_x-base_move_x_base, 0, 0],
            [-scarto_x/2, -scarto_y/2, base_altezza],
            [-scarto_x/2, top_base_y-scarto_y/2, base_altezza],
            [top_base_x -scarto_x/2, top_base_y -scarto_y/2 , base_altezza],
            [top_base_x-scarto_x/2, -scarto_y/2, base_altezza]
        ],
        [
            [0, 3, 2, 1],
            [4, 5, 6, 7],
            [0, 1, 5, 4],
            [1, 2, 6, 5],
            [2, 3, 7, 6],
            [3, 0 ,4, 7]
        ]
        );
        
        //color([1,0 ,0])
        translate([-scarto_x/2, -scarto_y/2, base_altezza-epsilon])
        {
            cube([top_base_x, top_base_y, 20]);
        };
    }
};

};

