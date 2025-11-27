# Deep Clone Object

## Problem Description

Implement a deep clone function for hashes/arrays without using Marshal. Handle nested hashes, arrays, primitives, and avoid circular references.

## Input Shape

- **Parameter**: `obj` - Any value (hash, array, primitive)

## Expected Output

- **Returns**: A deep clone of the input value

## Examples

```ruby
obj = { a: 1, nested: { x: 10 } }
cloned = deep_clone_object(obj)
cloned[:nested][:x] = 999
# obj[:nested][:x] is still 10
```

## Edge Cases

- Nested hashes should be cloned recursively
- Arrays should be cloned with their elements
- Primitives should be returned as-is
- Modifying clone should not affect original
- Empty hashes should be handled

## Notes

- Do NOT use Marshal.load(Marshal.dump(obj))
- Handle nested structures recursively
- Arrays should be cloned
- Primitives (numbers, strings, nil) can be returned directly

