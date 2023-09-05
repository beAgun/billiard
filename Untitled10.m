%определение бильярдного стола
x0 = 0; y0 = 0;
xm = 60; ym = 110;
hold on
rectangle('Position',[x0 y0 xm ym])
axis([0 x0+xm+10 0 y0+ym+10])

%массивы со значениями координат луз
n = 4;
% x = [x0 x0 x0 x0+xm x0+xm x0+xm];
x = x0+xm;
% disp(x(n))
% y = [y0 y0+ym/2 y0+ym y0+ym y0+ym/2 y0];
y = y0;
plot(x,y,'o','Color','[0.47 0.52 0.8]','MarkerFaceColor','[0.47 0.52 0.8]')

%начальное положение шара
xb = 30; yb = 30;

xh = 0.01;

%     straight_line(x(n),y(n),x0,y0,xm,ym,xh,xb,yb)
    x1 = xb:xh:x;
    y1 = (y-yb)/(x-xb)*x1 + (yb*x-y*xb)/(x-xb);
    comet1(x1,y1,0)
    
%     bottom_wall(x(n),y(n),x0,y0,xm,ym,xh,xb,yb)
    yimp = y0;
    ximp = (x*(yimp-yb)+xb*(yimp-y))/(2*yimp-yb-y);
    x21 = xb:xh:ximp;
    x22 = ximp:xh:x;
    y21 = (yimp-yb)/(ximp-xb)*x21 + (yb*ximp-yimp*xb)/(ximp-xb);
    y22 = (y-yimp)/(x-ximp)*x22 + (yimp*x-y*ximp)/(x-ximp);
    x2 = [x21 x22];
    y2 = [y21 y22];
    comet2(x2,y2,0)
    
%     left_wall(x(n),y(n),x0,y0,xm,ym,xh,xb,yb)
    ximp = x0;
    yimp = (y*(ximp-xb)+yb*(ximp-x))/(2*ximp-xb-x);
    x51 = xb:-xh:ximp;
    x52 = ximp:xh:x;
    y51 = (yimp-yb)/(ximp-xb)*x51 + (yb*ximp-yimp*xb)/(ximp-xb);
    y52 = (y-yimp)/(x-ximp)*x52 + (yimp*x-y*ximp)/(x-ximp);
    x5 = [x51 x52];
    y5 = [y51 y52];
    comet(x5,y5,0)
