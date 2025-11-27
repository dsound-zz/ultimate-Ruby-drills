# Remove Duplicates In Place

## Problem Description

Given a sorted array, remove duplicates in-place such that each element appears only once. Return the new length. Use two-pointer technique.

## Input Shape

- **Parameter**: `nums` - A sorted array of numbers (will be modified in-place)

## Expected Output

- **Returns**: The new length of the array without duplicates

## Examples

```ruby
nums = [1, 1, 2]
length = remove_duplicates_in_place(nums)
# length = 2, nums = [1, 2, ...]
```

## Edge Cases

- No duplicates (return original length)
- All elements are duplicates
- Single element
- Empty array

## Notes

- Modify array in-place
- Array is sorted
- Use two-pointer technique
- Return the new length
- Elements beyond the new length don't matter

