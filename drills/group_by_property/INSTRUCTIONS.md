# Group By Property

## Problem Description

Given an array of hashes and a key, return a hash where each key value maps to an array of items that have that property value. Use Ruby splat/merge operators where appropriate.

## Input Shape

- **Parameter 1**: `arr` - An array of hashes
- **Parameter 2**: `key` - The property key to group by (symbol)

## Expected Output

- **Returns**: A hash where keys are property values and values are arrays of matching hashes

## Examples

```ruby
group_by_property([
  { category: 'A', value: 1 },
  { category: 'B', value: 2 },
  { category: 'A', value: 3 }
], :category)
# => {
#   'A' => [{ category: 'A', value: 1 }, { category: 'A', value: 3 }],
#   'B' => [{ category: 'B', value: 2 }]
# }
```

## Edge Cases

- Empty array returns empty hash
- Single item returns hash with one key-value pair
- All items with same property value grouped together
- Preserves all hash properties in grouped arrays

## Notes

- Use Ruby splat/merge operators where appropriate
- Property values are converted to strings for hash keys
- Original hashes are preserved in the grouped arrays

