# Two Sum Sorted

## Problem Description

Given a sorted array of integers and a target sum, find two numbers that add up to the target. Return their indices as [i, j] where i < j. Use two-pointer technique.

## Input Shape

- **Parameter 1**: `arr` - A sorted array of integers
- **Parameter 2**: `target` - The target sum

## Expected Output

- **Returns**: `[i, j]` or `nil` - Indices of the two numbers, or nil if no solution exists

## Examples

```ruby
two_sum_sorted([2, 7, 11, 15], 9)  # => [0, 1]
two_sum_sorted([1, 2, 3, 4, 5], 7)  # => [2, 3]
two_sum_sorted([1, 2, 3, 4], 10)    # => nil
```

## Edge Cases

- No solution exists (return nil)
- Negative numbers should be handled
- Duplicate values may exist
- Two element array

## Notes

- Array is sorted (ascending)
- Use two-pointer technique starting from both ends
- Return indices, not values
- Time complexity should be O(n)

