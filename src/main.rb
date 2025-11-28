# Array Chunk
#
# Write a function that splits an array into chunks of a specified size.
# The last chunk may be smaller than the specified size if the array length
# is not evenly divisible by the chunk size.

def array_chunk(arr, size)
  # TODO: Implement this function
  return [] if arr.empty?

  result = []
  i = 0

  while i < arr.length 
    result << arr[i, size]
    i += size
  end

  result 
end

