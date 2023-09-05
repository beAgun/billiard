function upper_wall(x,y,xm,ym,xh,xb,yb)
    %шар удар€етс€ о верхнюю стенку биль€рда
    yimp = ym;
    ximp = (x*(yimp-yb)+xb*(yimp-y))/(2*yimp-yb-y);
    if xb>ximp 
        x41 = xb:-xh:ximp;
        x42 = ximp:-xh:x; 
    else
        x41 = xb:xh:ximp;
        x42 = ximp:xh:x; 
    end 
    y41 = (yimp-yb)/(ximp-xb)*x41 + (yb*ximp-yimp*xb)/(ximp-xb);
    y42 = (y-yimp)/(x-ximp)*x42 + (yimp*x-y*ximp)/(x-ximp);
    x4 = [x41 x42];
    y4 = [y41 y42];
    comet2(x4,y4,0)
end

