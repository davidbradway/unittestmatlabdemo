function [ rtScript, rtFunction, rtClass] = runalltestsSortAndSplitEvenAndOdds()
%RUNALLTESTS Run all the tests
%   Run the script-based, function-based, and class-based unit tests
% [ rtScript, rtFunction, rtClass] = runalltestsSortAndSplitEvenAndOdds()

    % This script based unit testing appears only to work in R2014b
    if verLessThan('matlab', '8.4.0')
        warning('there may be problems running on Matlab before R2014b, running as script');
        sortAndSplitEvenAndOddsScriptTest
    else
        resultScript = runtests('sortAndSplitEvenAndOddsScriptTest');
        rtScript = table(resultScript);
    end

    resultFunction = runtests('sortAndSplitEvenAndOddsFunctionTest');
    rtFunction = table(resultFunction);

    testCase = sortAndSplitEvenAndOddsTest;
    resultClass = run(testCase);
    rtClass = table(resultClass);
end

