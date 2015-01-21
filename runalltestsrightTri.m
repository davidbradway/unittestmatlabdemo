function [ rtScript, rtFunction, rtClass] = runalltests()
%RUNALLTESTS Run all the tests
%   Run the script-based, function-based, and class-based unit tests

    % This script based unit testing appears only to work in R2014b
    if verLessThan('matlab', '8.4.0')
        warning('there may be problems running on Matlab before R2014b, running as script');
        rightTriScriptTest
    else
        resultScript = runtests('rightTriScriptTest');
        rtScript = table(resultScript);
    end

    resultFunction = runtests('rightTriFunctionTest');
    rtFunction = table(resultFunction);

    testCase = RightTriTest;
    resultClass = run(testCase);
    rtClass = table(resultClass);
end

