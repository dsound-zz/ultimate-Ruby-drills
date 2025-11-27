# Unique Values

## Problem Description

Write a function that takes an array and returns an array containing only unique values. The order should be preserved based on the first occurrence of each value.

## Input Shape

- **Parameter**: `arr` - An array of any type

## Expected Output

- **Returns**: An array containing only unique values, preserving the order of first occurrence

## Examples

```ruby
unique_values([1, 2, 2, 3, 3, 3, 4])        # => [1, 2, 3, 4]
unique_values(['a', 'b', 'a', 'c', 'b'])   # => ['a', 'b', 'c']
unique_values([3, 1, 3, 2, 1])             # => [3, 1, 2]
unique_values([])                          # => []
unique_values([1, 1, 1, 1])                # => [1]
```

## Notes

- Preserve the order based on first occurrence
- Handle edge cases: empty arrays, arrays with all unique values, arrays with all duplicates
- The function should work with any type of array elements

