# Ultimate Ruby Drills

A repository for practicing Ruby coding drills, organized from easy to medium difficulty.

## Getting Started

1. Install dependencies:
```bash
bundle install
```

2. Load a drill:
```bash
./scripts/load-drill.sh <drill-name>
# Example: ./scripts/load-drill.sh palindrome
```

3. Run tests:
```bash
rake spec
# or
rspec
```

## Available Drills

- `reverse_string` - Reverse a string
- `unique_values` - Get unique values from an array
- `array_chunk` - Split an array into chunks
- `palindrome` - Check if a string is a palindrome
- `max_occurrence` - Find the most frequent character/element

## Project Structure

```
ultimate-Ruby-drills/
  drills/          # All drill exercises
  src/             # Active drill files (dynamically replaced)
  scripts/         # Utility scripts
```

Each drill contains:
- `solution.rb` - Starter code with function signature
- `solution_spec.rb` - RSpec tests
- `INSTRUCTIONS.md` - Problem description and examples

## How It Works

The `load-drill.sh` script copies a drill's files into the `src/` directory, allowing you to work on one drill at a time without conflicts.

# ultimate-Ruby-drills
