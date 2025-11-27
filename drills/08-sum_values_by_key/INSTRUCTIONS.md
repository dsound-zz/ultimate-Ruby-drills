# Sum Values By Key

## Problem Description

Given an array of hashes with numeric values, return a hash where each key maps to the sum of all values for that key across all hashes. Use Ruby splat/merge operators where appropriate.

## Input Shape

- **Parameter**: `arr` - An array of hashes with numeric values

## Expected Output

- **Returns**: A hash where keys map to the sum of all values for that key

## Examples

```ruby
sum_values_by_key([{ a: 1 }, { a: 2 }, { a: 3 }])
# => { a: 6 }

sum_values_by_key([
  { a: 1, b: 2 },
  { a: 3, b: 4 },
  { a: 5, b: 6 }
])
# => { a: 9, b: 12 }
```

## Edge Cases

- Empty array returns empty hash
- Missing keys should be treated as 0
- Negative values should be handled correctly
- Zero values should be preserved

## Notes

- Use Ruby splat/merge operators where appropriate
- Hashes may have different sets of keys
- All values are numeric

