# Unique Values
#
# Write a function that takes an array and returns an array containing only unique values.
# The order should be preserved based on first occurrence.

def unique_values(arr)
  # TODO: Implement this function
  seen = {}
  arr.select { |value| !seen.key?(value) && (seen[value] = true) }
end

