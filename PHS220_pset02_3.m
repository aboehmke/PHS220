% Alex Boehmke
% pset02, due 08Feb
% Animate a cycloid.
clear all

r = 1; % circle radius
v = 1; % translational velocity 
dTHETA = 0.1; % select rotation increment
THETA = 0:dTHETA:(10*pi);
X = [ ];
Y = [ ];
% radiusx = [ ];
% radiusy = [ ];
for t = 1:150
    % (a) circle
    circleX = r.*cos(THETA) + THETA(t);
    circleY = r.*sin(THETA) + 1;
    % (b) cycloid
    X(t) = r*(THETA(t) - sin(THETA(t))); % circle centered at (r*theta,r)
    Y(t) = r*(1 - cos(THETA(t)));
   
    plot(X,Y,'r-',circleX,circleY,'k-')
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
