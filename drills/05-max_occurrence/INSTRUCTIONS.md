# Max Occurrence

## Problem Description

Write a function that finds the character (or element) that appears most frequently in a string (or array). If there's a tie, return the one that appears first in the original input.

## Input Shape

- **Parameter**: `input` - Either a string or an array of any type

## Expected Output

- **Returns**: The character or element that appears most frequently. For strings, returns a string; for arrays, returns the element type.

## Examples

```ruby
max_occurrence('hello')                    # => 'l' (appears 2 times)
max_occurrence('hello world')              # => 'l' (appears 3 times, first among ties)
max_occurrence('a')                        # => 'a'
max_occurrence('')                         # => ''
max_occurrence('aaaa')                     # => 'a'
max_occurrence([1, 2, 2, 3, 3, 3])        # => 3 (appears 3 times)
max_occurrence(['a', 'b', 'a', 'c', 'a']) # => 'a' (appears 3 times)
max_occurrence([1, 2, 2, 1, 1])           # => 1 (appears 2 times, but appears first)
```

## Notes

- If there's a tie in frequency, return the element that appears first in the original input
- Handle edge cases: empty strings/arrays, single element, all same elements
- The function should work with both strings and arrays
- For empty arrays, you may return `nil` or handle as appropriate

