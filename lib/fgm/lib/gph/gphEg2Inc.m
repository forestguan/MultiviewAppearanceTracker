function [G, H] = gphEg2Inc(Eg, n)
% Obtain incidence matrix.
%
% Input
%   Eg      -  graph edge, 2 x (2m)
%   n       -  #nodes
%
% Output
%   G       -  node-edge adjacency, n x m
%   H       -  augumented node-edge adjacency, n x (m + n)
%
% History
%   create  -  Feng Zhou (zhfe99@gmail.com), 08-11-2011
%   modify  -  Feng Zhou (zhfe99@gmail.com), 04-26-2012

% dimension
m = round(size(Eg, 2) / 2);

% incidence matrix
G = zeros(n, m);
for c = 1 : m
    G(Eg(:, c), c) = 1;
end

% augumented adjacency
H = [G, eye(n)];
