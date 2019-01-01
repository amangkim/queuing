function p2d = plot2d (X, Y)
%Basic of drawing 2D graph
% Usage: p2d = plot2d (X,Y)
%   X  : X-Axis
%   Y  : Y-Axis
% Made by Amang
% Copy Left 2018/1/24

%%%%%%%%%%%%%%%%%%%%
figure()
clf

hold on
grid on

%%%%%%%%%%%%%%%%%%%% Graph Information
title('  //////Put your title////  ');
ylabel('  ////// Put your Y ////  ');
xlabel('  ////// Put your X ////  ');


%%%%%%%%%%%%%%%%%%%%
plot(X, Y, 'b');
hold off
