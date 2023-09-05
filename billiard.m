%определение бильярдного стола
% x0 = 10; y0 = 10;
xm = 60; ym = 120;
hold on
rectangle('Position',[0 0 xm ym])
axis([0 xm+10 0 ym+10])
% plot(0,ym/2+0.8,'.')
% plot(0,ym/2-0.8,'.')

%массивы со значениями координат луз
n = 6;
x = [0 0 0 xm xm xm];
% disp(x(n))
y = [0 ym/2 ym ym ym/2 0];
plot(x,y,'o','Color','[0.47 0.52 0.8]','MarkerFaceColor','[0.47 0.52 0.8]')

%начальное положение шара
xb = 1; yb = 30.87; %попадание в лузу 4 при 30,30 60,120

xh = 0.01;

switch n
 case 1
    straight_line(x(n),y(n),xm,ym,xh,xb,yb)
    upper_wall(x(n),y(n),xm,ym,xh,xb,yb)
    right_wall(x(n),y(n),xm,ym,xh,xb,yb)
 case 2
    straight_line(x(n),y(n),xm,ym,xh,xb,yb)
    upper_wall(x(n),y(n),xm,ym,xh,xb,yb)
    right_wall(x(n),y(n),xm,ym,xh,xb,yb)
    bottom_wall(x(n),y(n),xm,ym,xh,xb,yb)
 case 3
    straight_line(x(n),y(n),xm,ym,xh,xb,yb)
    right_wall(x(n),y(n),xm,ym,xh,xb,yb)
    bottom_wall(x(n),y(n),xm,ym,xh,xb,yb)
 case 4
    straight_line(x(n),y(n),xm,ym,xh,xb,yb)
    bottom_wall(x(n),y(n),xm,ym,xh,xb,yb)
    left_wall(x(n),y(n),xm,ym,xh,xb,yb)
 case 5
    straight_line(x(n),y(n),xm,ym,xh,xb,yb)
    upper_wall(x(n),y(n),xm,ym,xh,xb,yb)
    bottom_wall(x(n),y(n),xm,ym,xh,xb,yb)
    left_wall(x(n),y(n),xm,ym,xh,xb,yb)
 case 6
    straight_line(x(n),y(n),xm,ym,xh,xb,yb)
    upper_wall(x(n),y(n),xm,ym,xh,xb,yb)
    left_wall(x(n),y(n),xm,ym,xh,xb,yb)
 otherwise
  
end
 

