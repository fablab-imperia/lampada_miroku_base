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
include <pannello_inciso.scad>;
include <base_miroku.scad>;
include <scheda_forata.scad>;
include <cavo.scad>;


module miroku(basi_bot, basi_top)
{
    // miroku plexiglass
    spessore_miroku = 8;
    larghezza_miroku = 90;
    altezza_miroku = 135;

    altezza_da_terra = 60;




    base_x = basi_bot[0];
    base_y = basi_bot[1];
    base_altezza = altezza_da_terra - 10;
    top_base_x = basi_top[0];
    top_base_y = basi_top[1];


    scheda_larg=50+2.5;
    scheda_lung = 70+2.5;


    difference()
    {
        // base
       
        base(
        [base_x, base_y],
        [top_base_x, top_base_y],
        base_altezza
        );
        
        
        //Pannello inciso
        translate([0, 0, altezza_miroku/2 + altezza_da_terra])
        {
            pannello_inciso(larghezza_miroku, spessore_miroku, altezza_miroku);
        };
        
        // Scheda elettronica
        translate([-scheda_larg/2+5, -base_y/2+10, 5])
        {
            // DA FARE UNION NEL FILE SCHEDA_FORATA
            scheda_forata(scheda_larg, scheda_lung);
        };
        spessore = 15;
        cavo([0, 0, 10], [00, larghezza_miroku/2 +spessore-0.01, altezza_da_terra+5], spessore);
    };

}

/*
basi_bot = [108, 150];
basi_top = [28, 110];
miroku(basi_bot, basi_top);
*/

