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


module scheda_forata(scheda_larg, scheda_lung)
{
    color([0,0.7 ,0])
    {   
        union()
        {
            // Basetta forata con saldature
            cube([scheda_larg, scheda_lung, 15]);
        
            //Porta usb
            translate([10, -10, 9])
                {
                 cube([10,20,6]);
            };
        
            // Spazio cavi in uscita
            translate([scheda_larg-20, scheda_lung-1, 5])
            {
                 cube([20,20,10]);
            };
        };
    };
};
