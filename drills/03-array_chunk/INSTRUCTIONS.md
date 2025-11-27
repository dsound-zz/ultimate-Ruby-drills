# Array Chunk

## Problem Description

Write a function that splits an array into chunks of a specified size. The last chunk may be smaller than the specified size if the array length is not evenly divisible by the chunk size.

## Input Shape

- **Parameter 1**: `arr` - An array of any type
- **Parameter 2**: `size` - The size of each chunk (must be a positive integer)

## Expected Output

- **Returns**: An array of arrays, where each inner array is a chunk of the specified size

## Examples

```ruby
array_chunk([1, 2, 3, 4, 5], 2)           # => [[1, 2], [3, 4], [5]]
array_chunk([1, 2, 3, 4, 5, 6, 7], 3)     # => [[1, 2, 3], [4, 5, 6], [7]]
array_chunk([1, 2, 3, 4], 2)               # => [[1, 2], [3, 4]]
array_chunk([1, 2, 3], 5)                  # => [[1, 2, 3]]
array_chunk([], 2)                         # => []
array_chunk([1, 2, 3], 1)                  # => [[1], [2], [3]]
```

## Notes

- The last chunk may be smaller than the specified size
- Handle edge cases: empty arrays, chunk size larger than array length, chunk size of 1
- Preserve the order of elements within chunks

