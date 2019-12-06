# Simple-Heat-Equation-solver
Simple Heat Equation solver using finite difference method

![waves](https://github.com/mathworks/Simple-Heat-Equation-solver/blob/master/heat.gif)

# Finite differences for the 2D heat equation
Implementation of a simple numerical schemes for the heat equation, the second-order centered differences to approximate the spatial derivatives. Neumann boundary condition is employed for no-heat flux, thus please note that the grid location is staggered. Once the right hand side is obtained, the equation can be solved by the ODE suite. Here we use ode15s. 

See SimpleHeatEquation.pdf for details.

Copyright 2015-2016 The MathWorks, Inc.
[![View Simple Heat Equation solver on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://jp.mathworks.com/matlabcentral/fileexchange/59916-simple-heat-equation-solver)
