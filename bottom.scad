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

include <fondo_con_pioli.scad>
include <miroku.scad>;
basi_bot = [108, 150];
basi_top = [28, 120];
intersection()
{
   translate([(-basi_top[0] + basi_bot[0])/5, 0, 0])
    {
        fondo_con_pioli([basi_bot[0], basi_bot[1], 8], 9, 4);
    }

    miroku(basi_bot, basi_top);

};
    
