# Merge Sort

## Problem Description

Implement merge sort algorithm to sort an array of numbers. Use divide and conquer approach.

## Input Shape

- **Parameter**: `arr` - An array of numbers to sort

## Expected Output

- **Returns**: A sorted array (new array, not modifying input)

## Examples

```ruby
merge_sort([3, 1, 4, 1, 5, 9, 2, 6])  # => [1, 1, 2, 3, 4, 5, 6, 9]
merge_sort([5, 4, 3, 2, 1])            # => [1, 2, 3, 4, 5]
merge_sort([])                         # => []
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
- Divide array into halves recursively
- Merge sorted halves back together
- Time complexity: O(n log n)
- Space complexity: O(n)

