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

module cavo(punto_inizio, punto_fine, spessore)
{
    color([0, 0, 1])
    {
        // Cavo sul piano Y-Z
        translate([-spessore/2, 0, 0])
        {
            union()
            {
                translate(punto_inizio)
                {
                    cube([spessore, punto_fine[1]-punto_inizio[1], spessore+0.01]);
                };
                
                //color([1, 0,0])
                {
                    translate(punto_fine)
                    {
                        rotate([180, 0,0])
                        {
                            cube([spessore, spessore, punto_fine[2]-punto_inizio[2]]);
                        }
                        
                    }
                }
            }
        }
    }
    
    
}
//cavo([0, 0, 0], [0, 50, 80], 10);
