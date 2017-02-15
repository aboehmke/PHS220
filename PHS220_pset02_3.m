% Alex Boehmke
% pset02, due 08Feb
% Animate a cycloid.
clear all

r = 1;
v = 1; 
dtheta = 0.1; % select increment
theta = 0:dtheta:(10*pi);
x = [ ];
y = [ ];
% radiusx = [ ];
% radiusy = [ ];
for t = 1:150
    % (a) circle
    circlex = r.*cos(theta) + theta(t);
    circley = r.*sin(theta) + 1;
    % (b) cycloid
    x(t) = r*(theta(t) - sin(theta(t))); % circle centered at (r*theta,r)
    y(t) = r*(1 - cos(theta(t)));
   
    plot(x,y,'r-',circlex,circley,'k-')
    hold on
    axis([-2,20,-4,4]);
    ax = gca;
    ax.XAxisLocation = 'origin';
    ax.YAxisLocation = 'origin';
    axis equal
    drawnow
    pause(0.1)
    hold off
end
