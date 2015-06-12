function tests = sortAndSplitEvenAndOddsFunctionTest
% resultFunction = runtests('sortAndSplitEvenAndOddsFunctionTest');
% rtFunction = table(resultFunction)
    tests = functiontests(localfunctions);
end

function vectorTest(testCase)
    %% Test 1: test with a vector
    [odds,evens] = sortAndSplitEvenAndOdds([0, 4, 7, 2, 3]);
    actSolution1 = odds;
    expSolution1 = [3,7]';
    
    actSolution2 = evens;
    expSolution2 = [0,2,4]';
    
    % Better procedure - used in function unit test
    verifyEqual(testCase,actSolution1,expSolution1)
    verifyEqual(testCase,actSolution2,expSolution2)

    % Error check the outputs
    classes = {'numeric'};
    attributes = {'odd','increasing'};
    validateattributes(odds,classes,attributes)
    attributes = {'even','increasing'};
    validateattributes(evens,classes,attributes)
end
