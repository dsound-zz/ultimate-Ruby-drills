# Minimum Window Substring

## Problem Description

Given two strings s and t, return the minimum window substring of s such that every character in t (including duplicates) is included in the window. Return empty string if no such window exists. Use sliding window technique.

## Input Shape

- **Parameter 1**: `s` - The source string
- **Parameter 2**: `t` - The target string (characters to find)

## Expected Output

- **Returns**: The minimum window substring, or empty string if not found

## Examples

```ruby
minimum_window_substring('ADOBECODEBANC', 'ABC')  # => 'BANC'
minimum_window_substring('a', 'aa')              # => ''
minimum_window_substring('a', 'a')               # => 'a'
```

## Edge Cases

- No valid window exists (return empty string)
- Window at start or end of string
- Duplicate characters in t must all be present
- Single character match

## Notes

- Use sliding window technique
- Track character frequencies
- Expand window until all characters found
- Shrink window while maintaining validity
- Return minimum valid window

