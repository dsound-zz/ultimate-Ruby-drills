# Binary Search First Occurrence

## Problem Description

Given a sorted array and a target value, find the index of the first occurrence of the target. If not found, return -1.

## Input Shape

- **Parameter 1**: `arr` - A sorted array of numbers
- **Parameter 2**: `target` - The value to search for

## Expected Output

- **Returns**: The index of the first occurrence, or -1 if not found

## Examples

```ruby
binary_search_first_occurrence([1, 2, 2, 2, 3, 4], 2)  # => 1
binary_search_first_occurrence([1, 2, 3, 4, 5], 3)      # => 2
binary_search_first_occurrence([1, 2, 3, 4, 5], 6)      # => -1
```

## Edge Cases

- Array with duplicates (return first occurrence)
- Target at start or end of array
- Empty array returns -1
- Single element array

## Notes

- Array is guaranteed to be sorted
- When duplicates exist, return the leftmost index
- Use binary search for O(log n) time complexity

