# Unit Testing in Matlab

To run all the tests for first example function "rightTri.m":
```matlab
[rtScript, rtFunction, rtClass] = runalltestsrightTri();
```

## Script-based unit testing

Based on tutorial at [http://www.mathworks.com/help/matlab/matlab_prog/write-script-based-unit-tests.html]

To run the tests:
```matlab
resultScript = runtests('rightTriScriptTest');
```

Create a table of test results:
```matlab
rtScript = table(resultScript)
```

## Function-based unit testing

Based on tutorial at [http://www.mathworks.com/help/matlab/matlab_prog/write-function-based-unit-tests-.html]

To run the tests:
```matlab
resultFunction = runtests('rightTriFunctionTest');
```
or
```matlab
resultFunction = run(rightTriFunctionTest)
```

Create a table of test results:
```matlab
rtFunction = table(resultFunction)
```

## Class-based unit testing

Based on tutorial at [http://www.mathworks.com/help/matlab/matlab_prog/author-class-based-unit-tests-in-matlab.html] and here [http://www.mathworks.com/help/matlab/matlab_prog/write-simple-test-case-using-classes.html]

To run the tests:
```matlab
testCase = RightTriTest;
resultClass = run(testCase)
```

Create a table of test results:
```matlab
rtClass = table(resultClass)
```

