# frozen_string_literal: true

# Get the array with stock prices in it from the user, and store it
def stock_picker(stock_array)
  highest_number = 0
  lowest_number = 100
  highest_number_index = 0
  lowest_number_index = 0
  # Iterate through the array to find the highest day and store it in a variable UNLESS it is the first day
  # Iterate through the array to find the lowest day and store it in a variable UNLESS it is the last day
  stock_array.each_with_index do |number, index|
    unless number == stock_array.first
      if number > highest_number
        highest_number = number
        highest_number_index = index
      end
    end
    next if number == stock_array.last

    next unless number < lowest_number

    unless index > highest_number_index
      lowest_number = number
      lowest_number_index = index
    end
  end
  puts "buy on day #{lowest_number_index} for $#{lowest_number}"
  puts "sell on day #{highest_number_index} for $#{highest_number}"
  puts "for a profit of $#{highest_number - lowest_number}"
end

# Print the result
stock_picker([17, 15, 6, 9, 3, 8, 6, 1, 10])
