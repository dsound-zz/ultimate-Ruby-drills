# Quick Sort

## Problem Description

Implement quick sort algorithm to sort an array of numbers in-place. Use divide and conquer approach.

## Input Shape

- **Parameter**: `arr` - An array of numbers to sort (modified in-place)

## Expected Output

- **Returns**: The sorted array (same reference)

## Examples

```ruby
arr = [3, 1, 4, 1, 5, 9, 2, 6]
quick_sort(arr)
# arr is now [1, 1, 2, 3, 4, 5, 6, 9]
```

## Edge Cases

- Empty array
- Single element
- Already sorted array
- Reverse sorted array
- Duplicate values
- Negative numbers

## Notes

- Use divide and conquer approach
- Choose a pivot element
- Partition array around pivot
- Recursively sort subarrays
- Modify array in-place
- Time complexity: O(n log n) average, O(n²) worst case

