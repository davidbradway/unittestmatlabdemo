%% Test 1: sum of angles
% Test that all angles add up to 180 degrees.
[A,B,C] = rightTri(7,9);
assert(A+B+C == 180)

%% Test 2: isosceles triangles
% Test that if sides a and b are equal, angles A and B are equal.
[A,B,C] = rightTri(4,4);
assert(A == B)

%% Test 3: 3-4-5 triangle
% Test that if side a is 3 and side b is 4, side c (hypotenuse) is 5.
[A,B,C] = rightTri(3,4);
c = 3/sind(A);
assert(isequal(c,5))

%% Test 4: 30-60-90 triangle
% Test that if side a is 1 and side b is sqrt(3), the angles A and B are 30
% and 60 degrees, respectively.
tol = 1e-14;
[A,B,C] = rightTri(1,sqrt(3));
assert(abs(A-30) <= tol)
assert(abs(B-60) <= tol)

