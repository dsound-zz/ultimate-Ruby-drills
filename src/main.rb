# Max Occurrence
#
# Write a function that finds the character (or element) that appears most frequently
# in a string (or array). If there's a tie, return the one that appears first.

def max_occurrence(input)
  # TODO: Implement this function
  return '' if input == ''

  inputAry = input.is_a?(String) ? input.chars : input
  return nil if inputAry.empty? 

  countHash = Hash.new(0)
  maxCount = 0

  inputAry.each do |ele|
    countHash[ele] += 1

    maxCount = [maxCount, countHash[ele]].max
  end

  inputAry.each do |ele|
    return ele if countHash[ele] == maxCount
  end


  nil
end

