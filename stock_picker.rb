# frozen_string_literal: true

# Get the array with stock prices in it from the user, and store it
def stock_picker(stock_array)
  new_array = stock_array.sort
  new_array.shift if new_array.first == stock_array.last
  new_array.pop if new_array.last == stock_array.first
  puts new_array
end
# Iterate through the array to find the lowest day and store it in a variable UNLESS it is the last day
# Iterate through the array to find the highest day and store it in a variable UNLESS it is the first day
# Print the result
stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
