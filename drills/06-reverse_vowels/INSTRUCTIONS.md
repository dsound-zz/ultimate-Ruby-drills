# Reverse Vowels

## Problem Description

Given a string, reverse only the vowels (a, e, i, o, u) while keeping consonants in their original positions. Use two-pointer technique.

## Input Shape

- **Parameter**: `s` - A string of any length

## Expected Output

- **Returns**: String with vowels reversed

## Examples

```ruby
reverse_vowels('hello')     # => 'holle'
reverse_vowels('leetcode')   # => 'leotcede'
reverse_vowels('bcdfg')      # => 'bcdfg'
reverse_vowels('aeiou')      # => 'uoiea'
```

## Edge Cases

- No vowels (return original)
- Only vowels (reverse all)
- Uppercase vowels should be handled
- Mixed case
- Empty string

## Notes

- Vowels are a, e, i, o, u (case-insensitive)
- Consonants stay in place
- Use two-pointer technique
- Swap vowels from both ends moving inward

