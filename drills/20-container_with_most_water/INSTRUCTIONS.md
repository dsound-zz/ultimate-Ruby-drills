# Container With Most Water

## Problem Description

Given an array of heights representing vertical lines, find two lines that form a container with the most water. Return the maximum area. Use two-pointer technique.

## Input Shape

- **Parameter**: `heights` - Array of non-negative integers representing heights

## Expected Output

- **Returns**: The maximum area of water that can be contained

## Examples

```ruby
container_with_most_water([1, 8, 6, 2, 5, 4, 8, 3, 7])  # => 49
container_with_most_water([1, 1])                        # => 1
container_with_most_water([1, 2, 3, 4, 5])               # => 6
```

## Edge Cases

- Two elements
- Increasing/decreasing heights
- Same heights

## Notes

- Area = min(height[i], height[j]) * (j - i)
- Use two-pointer technique
- Start with pointers at both ends
- Move the pointer with smaller height

