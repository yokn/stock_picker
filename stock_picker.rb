# frozen_string_literal: true

# Get the array with stock prices in it from the user, and store it
def stock_picker(stock_array)
  highest_number = 0
  lowest_number = 100

  # Iterate through the array to find the highest day and store it in a variable UNLESS it is the first day
  # Iterate through the array to find the lowest day and store it in a variable UNLESS it is the last day
  stock_array.each do |number|
    unless number == stock_array.first
      highest_number = number if number > highest_number
    end
    next if number == stock_array.last

    lowest_number = number if number < lowest_number
  end
  puts highest_number
  puts lowest_number
end

# Print the result
stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
