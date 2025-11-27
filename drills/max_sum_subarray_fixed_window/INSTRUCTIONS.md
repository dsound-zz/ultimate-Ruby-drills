# Max Sum Subarray Fixed Window

## Problem Description

Given an array of integers and a window size k, find the maximum sum of any contiguous subarray of size k. Use sliding window technique.

## Input Shape

- **Parameter 1**: `arr` - An array of integers
- **Parameter 2**: `k` - The window size

## Expected Output

- **Returns**: The maximum sum of any contiguous subarray of size k

## Examples

```ruby
max_sum_subarray_fixed_window([1, 4, 2, 10, 23, 3, 1, 0, 20], 4)  # => 39
max_sum_subarray_fixed_window([1, 2, 3], 3)                        # => 6
max_sum_subarray_fixed_window([1, 2, 3, 4], 1)                     # => 4
```

## Edge Cases

- Window size equals array length
- Window size of 1
- Negative numbers
- Mixed positive and negative
- Single element array

## Notes

- Use sliding window technique
- Window size is fixed (k)
- Calculate sum of current window
- Slide window and update maximum sum

