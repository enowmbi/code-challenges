# frozen_string_literal: true

def grid_traveler(row, column, memo = {})
  key = "#{row}-#{column}"
  return memo[key] if memo.key?(key)

  return 1 if row == 1 && column == 1
  return 0 if row.zero? || column.zero?

  memo[key] = grid_traveler(row, column - 1, memo) + grid_traveler(column - 1, row, memo)
  memo[key]
end
