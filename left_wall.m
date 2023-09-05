function left_wall(x,y,xm,ym,xh,xb,yb)
    %шар ударяется о левую боковую стенку бильярда
    ximp = 0;
    yimp = (y*(ximp-xb)+yb*(ximp-x))/(2*ximp-xb-x);
    if (yimp>=ym/2+1)||(yimp<=ym/2-1)
        x51 = xb:-xh:ximp;
        x52 = ximp:xh:x;
        y51 = (yimp-yb)/(ximp-xb)*x51 + (yb*ximp-yimp*xb)/(ximp-xb);
        y52 = (y-yimp)/(x-ximp)*x52 + (yimp*x-y*ximp)/(x-ximp);
        x5 = [x51 x52];
        y5 = [y51 y52];
        comet(x5,y5,0)
    end
end

