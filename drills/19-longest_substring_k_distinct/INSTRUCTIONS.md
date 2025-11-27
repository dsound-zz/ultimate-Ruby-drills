# Longest Substring K Distinct

## Problem Description

Given a string and an integer k, find the length of the longest substring that contains at most k distinct characters. Use sliding window technique.

## Input Shape

- **Parameter 1**: `s` - A string of any length
- **Parameter 2**: `k` - Maximum number of distinct characters allowed

## Expected Output

- **Returns**: The length of the longest substring with at most k distinct characters

## Examples

```ruby
longest_substring_k_distinct('eceba', 2)  # => 3 (substring: "ece")
longest_substring_k_distinct('aa', 1)      # => 2
longest_substring_k_distinct('abc', 5)     # => 3
```

## Edge Cases

- Empty string returns 0
- k=0 returns 0
- k larger than distinct characters returns string length
- Single character

## Notes

- Use sliding window technique
- Track distinct character count in window
- Expand when distinct count <= k
- Shrink when distinct count > k

