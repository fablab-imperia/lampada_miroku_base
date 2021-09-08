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


module pannello_inciso(larghezza, spessore, altezza)
{
    color([0.8, 0.8, 0.8])
    {
        union()
        {
            cube([spessore, larghezza, altezza], center=true);
        
            spessore_strip = 12;
            altezza_strip = 5;
            translate([-spessore_strip/2, -larghezza/2, -altezza/2])
            {
                cube([spessore_strip, larghezza, altezza_strip]);
            };
        };
        
            
    };
};
