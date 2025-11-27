# Count Inversions

## Problem Description

Count the number of inversions in an array. An inversion is a pair (i, j) where i < j and arr[i] > arr[j]. Use merge sort approach.

## Input Shape

- **Parameter**: `arr` - An array of numbers

## Expected Output

- **Returns**: The count of inversions

## Examples

```ruby
count_inversions([2, 4, 1, 3, 5])  # => 3
count_inversions([1, 2, 3, 4, 5])   # => 0
count_inversions([5, 4, 3, 2, 1])   # => 10
```

## Edge Cases

- Empty array returns 0
- Single element returns 0
- Sorted array returns 0
- Reverse sorted array has maximum inversions
- Duplicate values should be handled

## Notes

- Use merge sort approach
- Count inversions during merge step
- When merging, if left[i] > right[j], count inversions
- Time complexity: O(n log n)

