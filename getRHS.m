function du = getRHS(u,alpha,dx,N)
% Copyright 2015-2016 The MathWorks, Inc.

% Reshape the date in 2D
u = reshape(u,N-1,N-1);

% Copy it to new array with boundaries.
ubig = zeros(N+1,N+1);
ubig(2:end-1,2:end-1) = u;

% Neumann Boundary condition
% set the zero-gradient = no heat flux
ubig(1,:) = ubig(2,:);
ubig(end,:) = ubig(end-1,:);
ubig(:,1) = ubig(:,2);
ubig(:,end) = ubig(:,end-1);

% Get the second derivatives
u = ubig;
du = alpha/dx^2*(u(1:end-2,2:end-1)-2*u(2:end-1,2:end-1)+u(2:end-1,3:end)...
    + u(2:end-1,1:end-2)-2*u(2:end-1,2:end-1)+u(3:end,2:end-1));

du = du(:);