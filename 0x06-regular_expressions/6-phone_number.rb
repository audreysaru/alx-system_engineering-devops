#!/usr/bin/env ruby

# Check if the script is given exactly one argument
if ARGV.length != 1
  puts "Usage: #{__FILE__} <phone_number>"
  exit 1
end

# Method to match the regular expression for a 10-digit phone number
def match_phone_number(phone_number)
  # Define the regular expression
  regex = /\A\d{10}\z/

  # Use the Oniguruma library to match the regex
  if phone_number.match?(regex)
    puts "Match found: #{phone_number}"
  else
    puts "No match found for the pattern in: #{phone_number}"
  end
end

# Get the phone number from the command line argument
phone_number_to_match = ARGV[0]

# Call the method to match the regular expression
match_phone_number(phone_number_to_match)
