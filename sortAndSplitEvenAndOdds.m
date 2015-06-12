function [odds,evens] = sortAndSplitEvenAndOdds(list)
% This function takes a list or matrix of numbers and
% retuns the list sorted in least to most with the odd 
% numbers in the first output argument and the evens
% numbers in the second output argument.
    
    % Error check the inputs
    classes = {'numeric'};
    attributes = {};
    validateattributes(list,classes,attributes)

    % flatten and sort input list
    sortedList = sort(list(:));

    % even numbers are divisible by 2 with no remainder
    evens = sortedList(mod(sortedList,2) == 0);

    % odd numbers divided by 2 have remainder of 1
    odds = sortedList(mod(sortedList,2) == 1);
    
end

