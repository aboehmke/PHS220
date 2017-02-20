% Alex Boehmke
% pset02, due 08Feb
% animate a cycloid
clear all

r = 2;
v = 1; 
dtheta = 0.1; % select increment
theta = 0:dtheta:(10*pi); % or time
x = [ ];
y = [ ];
for t = 1:150
    % (a) circle
    circlex = r.*cos(theta) + r*theta(t);
    circley = r.*sin(theta) + r;
    % (b) cycloid
    x(t) = r*(theta(t) - sin(theta(t))); % circle centered at (r*theta,r)
    y(t) = r*(1 - cos(theta(t)));
    % (c) radius
    % the two points of the radius line are
    % center: (theta,1) and  edge:(x,y)
    radiusx = [(r * theta(t)),x(t)];
    radiusy = [r,y(t)];
   
    plot(x,y,'r-',circlex,circley,'k-',radiusx,radiusy,'g-')
    xlabel('x');
    ylabel('y');
    title('cycloid animation')
    %axis([-r,4*2*pi*r,-2,3*r]);
    axis equal
    ax = gca;
    ax.XAxisLocation = 'origin';
    ax.YAxisLocation = 'origin';
    hold on
    drawnow
    pause(0.1) % btwn each iteration of the loop, so btw each re-drawing of circle
    hold off % hold off at the end of each iteration to erase circle and radius
end

