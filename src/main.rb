# Reverse String
#
# Write a function that takes a string and returns it reversed.

def reverse_string(str)
  # TODO: Implement this function
  return str if !str || str.size == 1 

  arr = str.chars
  left  = 0
  right = arr.length - 1

  while left < right
    arr[left], arr[right] = arr[right], arr[left]
    left += 1
    right -= 1
  end

  arr.join
end




