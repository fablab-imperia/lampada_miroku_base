module fondo_con_pioli(dim, altezza_piolo, raggio_piolo)
{
    union()
    {
        aumento_y = 40;
        translate([0, 0, dim[2]/2-aumento_y/2]){ cube(dim+[0, 0, aumento_y+0.01], center=true);};
        for (i=[
                [1,1],
                [-1,1],
                [1, -1],
                //[-1, -1]
            ])
        {
            scarto_x = 30;
            scarto_y = 50;
            translate([scarto_x*i[0]-5, scarto_y*i[1], altezza_piolo/2 + dim[2] - 0.01])
            {
               cylinder(altezza_piolo, raggio_piolo, raggio_piolo, center=true);
            }
        }
    }
};
//fondo_con_pioli([100, 170, 5], 15);