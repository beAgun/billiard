function straight_line(x,y,xm,ym,xh,xb,yb)
    %кратчайша€ траектори€ - пр€ма€, соедин€юща€ две точки
    if xb>x 
        x1 = xb:-xh:x;
    else
        x1 = xb:xh:x;
    end
    y1 = (y-yb)/(x-xb)*x1 + (yb*x-y*xb)/(x-xb);
    comet1(x1,y1,0)
end

