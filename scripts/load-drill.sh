#!/bin/bash

# Load a drill into the src/ directory
# Usage: ./scripts/load-drill.sh <drill-name>

if [ -z "$1" ]; then
  echo "Error: Please provide a drill name"
  echo "Usage: ./scripts/load-drill.sh <drill-name>"
      echo "Example: ./scripts/load-drill.sh 04-palindrome"
  exit 1
fi

DRILL_NAME="$1"
DRILL_PATH="drills/${DRILL_NAME}"

if [ ! -d "$DRILL_PATH" ]; then
  echo "Error: Drill '${DRILL_NAME}' not found in drills/"
  exit 1
fi

# Check if required files exist
if [ ! -f "${DRILL_PATH}/solution.rb" ]; then
  echo "Error: ${DRILL_PATH}/solution.rb not found"
  exit 1
fi

if [ ! -f "${DRILL_PATH}/solution_spec.rb" ]; then
  echo "Error: ${DRILL_PATH}/solution_spec.rb not found"
  exit 1
fi

# Copy drill files to src/
cp "${DRILL_PATH}/solution.rb" "src/main.rb"
cp "${DRILL_PATH}/solution_spec.rb" "src/main_spec.rb"

echo "✅ Successfully loaded drill: ${DRILL_NAME}"
echo "📝 Files copied:"
echo "   - ${DRILL_PATH}/solution.rb → src/main.rb"
echo "   - ${DRILL_PATH}/solution_spec.rb → src/main_spec.rb"
echo ""
echo "💡 Run 'rake spec' or 'rspec' to run the tests"

