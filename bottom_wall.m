function bottom_wall(x,y,xm,ym,xh,xb,yb)
    %шар удар€етс€ о нижнюю стенку биль€рда
    yimp = 0;
    ximp = (x*(yimp-yb)+xb*(yimp-y))/(2*yimp-yb-y);
    if xb>ximp 
        x21 = xb:-xh:ximp;
        x22 = ximp:-xh:x;
    else
        x21 = xb:xh:ximp;
        x22 = ximp:xh:x;
    end
    y21 = (yimp-yb)/(ximp-xb)*x21 + (yb*ximp-yimp*xb)/(ximp-xb);
    y22 = (y-yimp)/(x-ximp)*x22 + (yimp*x-y*ximp)/(x-ximp);
    x2 = [x21 x22];
    y2 = [y21 y22];
    comet2(x2,y2,0)
end

