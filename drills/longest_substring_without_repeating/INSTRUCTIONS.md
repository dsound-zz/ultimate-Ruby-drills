# Longest Substring Without Repeating

## Problem Description

Given a string, find the length of the longest substring without repeating characters. Use sliding window technique.

## Input Shape

- **Parameter**: `s` - A string of any length

## Expected Output

- **Returns**: The length of the longest substring without repeating characters

## Examples

```ruby
longest_substring_without_repeating('abcabcbb')  # => 3 (substring: "abc")
longest_substring_without_repeating('bbbbb')     # => 1 (substring: "b")
longest_substring_without_repeating('pwwkew')    # => 3 (substring: "wke")
```

## Edge Cases

- Empty string returns 0
- Single character returns 1
- All same characters
- All unique characters
- String with spaces

## Notes

- Use sliding window technique
- Track characters in current window
- Expand window when no duplicates
- Shrink window when duplicate found

