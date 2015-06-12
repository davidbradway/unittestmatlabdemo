%% Test Class Definition
classdef sortAndSplitEvenAndOddsTest < matlab.unittest.TestCase
   
    %% Test Method Block
    methods (Test)
        % includes unit test functions

        function testWithAVector(testCase)
            %% Test 1: test with a vector

            [odds,evens] = sortAndSplitEvenAndOdds([0, 4, 7, 2, 3]);
            actSolution1 = odds;
            expSolution1 = [3,7]';
            
            actSolution2 = evens;
            expSolution2 = [0,2,4]';
    
            % Error check the outputs
            classes = {'numeric'};
            attributes = {'odd','increasing'};
            validateattributes(odds,classes,attributes)
            attributes = {'even','increasing'};
            validateattributes(evens,classes,attributes)

            % Best procedure
            testCase.verifyEqual(actSolution1,expSolution1);
            testCase.verifyEqual(actSolution2,expSolution2);
        end
    end
end