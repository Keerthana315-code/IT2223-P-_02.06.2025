
arr = [8, 3, 7, 4, 9, 2]; % Example array
sortedArr = quickSort(arr);
disp(sortedArr);

function sortedArray = quickSort(arr)
    if nargin == 0 || isempty(arr) % Check if input is provided
        error('Please provide an input array to sort.');
    end

    if numel(arr) <= 1
        sortedArray = arr;
        return;
    end

    pivot = arr(1); % First element as pivot
    leftArr = arr(arr < pivot);
    rightArr = arr(arr > pivot);
    equalArr = arr(arr == pivot);

    sortedArray = [quickSort(leftArr), equalArr, quickSort(rightArr)];
end
