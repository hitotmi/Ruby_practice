# frozen_string_literal: true

# require 'debug'

def fizz_buzz(n)
  # binding.break
  if (n % 15).zero?
    'Fizz Buzz'
  elsif (n % 3).zero?
    'Fizz'
  elsif (n % 5).zero?
    'Buzz'
  else
    n.to_s
  end
end
