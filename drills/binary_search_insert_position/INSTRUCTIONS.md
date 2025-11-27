# Binary Search Insert Position (Lower Bound)

## Problem Description

Given a sorted array and a target value, return the index where the target should be inserted to maintain sorted order. This is the lower bound - the first position where the element is >= target.

## Input Shape

- **Parameter 1**: `arr` - A sorted array of numbers
- **Parameter 2**: `target` - The value to find insert position for

## Expected Output

- **Returns**: The index where target should be inserted (lower bound)

## Examples

```ruby
binary_search_insert_position([1, 3, 5, 6], 5)  # => 2
binary_search_insert_position([1, 3, 5, 6], 2)   # => 1
binary_search_insert_position([1, 3, 5, 6], 7)   # => 4
```

## Edge Cases

- Existing element returns its position (or first occurrence if duplicates)
- Non-existing element returns where it should be inserted
- Insert at start (target < all elements)
- Insert at end (target > all elements)
- Empty array returns 0

## Notes

- Array is guaranteed to be sorted
- Return the lower bound (first position >= target)
- This is useful for maintaining sorted order when inserting

