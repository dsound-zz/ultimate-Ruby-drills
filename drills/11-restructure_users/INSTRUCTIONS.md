# Restructure Users

## Problem Description

Convert an array of user hashes into an ID → user lookup hash. Each user hash should have an 'id' key. Use Ruby splat/merge operators to create the lookup hash.

## Input Shape

- **Parameter**: `users` - An array of user hashes with at least an `id` key

## Expected Output

- **Returns**: A hash where keys are user IDs and values are the full user hashes

## Examples

```ruby
restructure_users([
  { id: 1, name: 'Alice', email: 'alice@example.com' },
  { id: 2, name: 'Bob', email: 'bob@example.com' }
])
# => {
#   1 => { id: 1, name: 'Alice', email: 'alice@example.com' },
#   2 => { id: 2, name: 'Bob', email: 'bob@example.com' }
# }
```

## Edge Cases

- Empty array returns empty hash
- Single user returns hash with one key-value pair
- Additional properties should be preserved

## Notes

- Use Ruby splat/merge operators to build the lookup hash
- Each user hash must have an 'id' key
- Preserve all properties of the user hashes

