# Merge Objects With Priority

## Problem Description

Merge two hashes where the second hash overrides the first. Preserve nested keys (deep merge). Use Ruby merge operators where appropriate.

## Input Shape

- **Parameter 1**: `hash1` - The base hash
- **Parameter 2**: `hash2` - The hash that overrides hash1

## Expected Output

- **Returns**: A merged hash where hash2 values override hash1, with nested hashes merged deeply

## Examples

```ruby
merge_objects_with_priority(
  { a: 1, b: 2 },
  { b: 3, c: 4 }
)
# => { a: 1, b: 3, c: 4 }

merge_objects_with_priority(
  { a: 1, nested: { x: 10, y: 20 } },
  { nested: { y: 30, z: 40 } }
)
# => { a: 1, nested: { x: 10, y: 30, z: 40 } }
```

## Edge Cases

- Empty hashes should be handled
- Deeply nested structures should be merged recursively
- Arrays should be overwritten (not merged)

## Notes

- Use Ruby merge operators where appropriate
- Perform deep merge for nested hashes
- Arrays are replaced, not merged
- The second hash takes priority for all conflicts

