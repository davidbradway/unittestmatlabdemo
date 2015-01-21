function tests = rightTriFunctionTest
    tests = functiontests(localfunctions);
end

function testSumOfAngles(testCase)
    %% Test 1: sum of angles
    % Test that all angles add up to 180 degrees.
    [A,B,C] = rightTri(7,9);
    actSolution = A+B+C;
    expSolution = 180;
    %{
    % Good - used in script unit test
    assert(actSolution == expSolution)
    %}

    % Better procedure - used in function unit test
    verifyEqual(testCase,actSolution,expSolution)
end

function testIsoscelesTriangles(testCase)
    %% Test 2: isosceles triangles
    % Test that if sides a and b are equal, angles A and B are equal.
    [A,B,C] = rightTri(4,4);
    actSolution = A;
    expSolution = B;

    %{
    % Good - used in script unit test
    assert(actSolution == expSolution)
    %}

    % Better procedure - used in function unit test
    verifyEqual(testCase,actSolution,expSolution)
end

function test345Triangle(testCase)
    %% Test 3: 3-4-5 triangle
    % Test that if side a is 3 and side b is 4, side c (hypotenuse) is 5.
    [A,B,C] = rightTri(3,4);
    c = 3/sind(A);
    actSolution = c;
    expSolution = 5;

    %{
    % Good - used in script unit test
    assert(isequal(actSolution,expSolution))
    %}
    
    % Better procedure - used in function unit test
    verifyEqual(testCase,actSolution,expSolution)
end

function test306090Triangle(testCase)
    %% Test 4: 30-60-90 triangle
    % Test that if side a is 1 and side b is sqrt(3), the angles A and B are 30
    % and 60 degrees, respectively.
    tol = 1e-14;
    [A,B,C] = rightTri(1,sqrt(3));
    actSolution1 = A;
    expSolution1 = 30;
    actSolution2 = B;
    expSolution2 = 60;

    %{
    % Good - used in script unit test
    assert(abs(actSolution1-expSolution1) <= tol)
    assert(abs(actSolution2-expSolution2) <= tol)
    %}
    
    % Better procedure - used in function unit test
    % See notes on tolerance here [http://www.mathworks.com/help/matlab/ref/matlab.unittest.qualifications.verifiable.verifyequal.html]
    verifyEqual(testCase,actSolution1,expSolution1, 'AbsTol', tol)
    verifyEqual(testCase,actSolution2,expSolution2, 'AbsTol', tol)
end

%% Optional file fixtures  
function setupOnce(testCase)  % do not change function name
end

function teardownOnce(testCase)  % do not change function name
end

%% Optional fresh fixtures  
function setup(testCase)  % do not change function name
end

function teardown(testCase)  % do not change function name
end

