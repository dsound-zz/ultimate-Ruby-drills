# Average Values By Group

## Problem Description

Given an array of hashes with 'category' and 'value' keys, return a hash where each category maps to the average value for that category. Use Ruby splat/merge operators where appropriate.

## Input Shape

- **Parameter**: `arr` - An array of hashes with `category` and `value` keys

## Expected Output

- **Returns**: A hash where each category maps to its average value

## Examples

```ruby
average_values_by_group([
  { category: 'A', value: 10 },
  { category: 'A', value: 20 },
  { category: 'A', value: 30 }
])
# => { A: 20 }
```

## Edge Cases

- Empty array returns empty hash
- Single item per category returns that value
- Decimal averages should be calculated correctly
- Negative values should be handled

## Notes

- Use Ruby splat/merge operators where appropriate
- Average should be the sum divided by count

