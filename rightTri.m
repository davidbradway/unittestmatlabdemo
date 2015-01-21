function [A,B,C] = rightTri(a,b)
% This function takes lengths of two sides of a triangle as input 
% and returns the three angles of the corresponding right triangle
% in units of degrees.
% The input sides are not the hypotenuse of the triangle.
    
    % Error check the inputs
    %  Each of the two inputs must be a [1x1] array
    %  of a positive real number
    %  This will prevent divide-by-zero, 
    %  numel mismatch, and matrix math problems
    classes = {'numeric'};
    attributes = {'size',[1,1],'>',0,};
    validateattributes(a,classes,attributes)
    validateattributes(b,classes,attributes)

    C = 90;
    A = atand(a./b);
    B = atand(b./a);
end
