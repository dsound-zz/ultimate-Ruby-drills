# Palindrome
#
# Write a function that checks if a string is a palindrome.
# A palindrome is a word, phrase, number, or other sequence of characters
# that reads the same forward and backward (ignoring case, spaces, and punctuation).

def palindrome(str)
  # TODO: Implement this function
  cleanedStr = str.downcase.gsub(/[^a-z0-9]/, "")
  left = 0
  right = cleanedStr.size - 1

  while left < right 
    return false if cleanedStr[left] != cleanedStr[right]
    left += 1
    right -= 1
  end

  true
end

