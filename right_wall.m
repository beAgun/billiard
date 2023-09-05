function right_wall(x,y,xm,ym,xh,xb,yb)
    %шар ударяется о правую боковую стенку бильярда
    ximp = xm;
    yimp = (y*(ximp-xb)+yb*(ximp-x))/(2*ximp-xb-x);
    if (yimp>=ym/2+1)||(yimp<=ym/2-1)
        x31 = xb:xh:xm;
        x32 = xm:-xh:x;
        y31 = (yimp-yb)/(ximp-xb)*x31 + (yb*ximp-yimp*xb)/(ximp-xb);
        y32 = (y-yimp)/(x-ximp)*x32 + (yimp*x-y*ximp)/(x-ximp);
        x3 = [x31 x32];
        y3 = [y31 y32];
        comet(x3,y3,0)
    end
end

