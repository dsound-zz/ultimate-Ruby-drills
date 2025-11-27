# Palindrome

## Problem Description

Write a function that checks if a string is a palindrome. A palindrome is a word, phrase, number, or other sequence of characters that reads the same forward and backward. For this problem, ignore case, spaces, and punctuation.

## Input Shape

- **Parameter**: `str` - A string of any length

## Expected Output

- **Returns**: A boolean - `true` if the string is a palindrome, `false` otherwise

## Examples

```ruby
palindrome('racecar')                    # => true
palindrome('hello')                       # => false
palindrome('a')                          # => true
palindrome('')                           # => true
palindrome('Racecar')                    # => true
palindrome('race car')                   # => true
palindrome('A man a plan a canal Panama') # => true
palindrome('12321')                      # => true
palindrome("Madam, I'm Adam")           # => true
```

## Notes

- Ignore case (uppercase/lowercase should be treated the same)
- Ignore spaces and punctuation
- Empty strings are considered palindromes
- Single characters are considered palindromes

