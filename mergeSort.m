function sortedArray = mergeSort(arr)
    if numel(arr) <= 1
        sortedArray = arr;
        return;
    end

    mid = floor(numel(arr) / 2);
    leftHalf = mergeSort(arr(1:mid));
    rightHalf = mergeSort(arr(mid+1:end));

    sortedArray = merge(leftHalf, rightHalf);
end

function mergedArray = merge(leftArr, rightArr)
    mergedArray = [];
    while ~isempty(leftArr) && ~isempty(rightArr)
        if leftArr(1) < rightArr(1)
            mergedArray = [mergedArray, leftArr(1)];
            leftArr(1) = [];
        else
            mergedArray = [mergedArray, rightArr(1)];
            rightArr(1) = [];
        end
    end
    mergedArray = [mergedArray, leftArr, rightArr];
end
