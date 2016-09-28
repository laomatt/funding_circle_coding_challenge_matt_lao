def prime_table(n)
  # first we take care of the edge case: n = 1, if 1 is the input, we should only output a single element array of 1
  if n == 1
    p [1]
    return
  end

  # this is my helper function to tell if number is prime
  is_a_prime = lambda do |number|
    # take care of edge cases 1 and 2
    if number == 1 || number == 2
      return true
    end
    (2..number-1).to_a.each do |divisor|
      if number % divisor == 0
        return false
      end
    end

    return true
  end

  # now that we can get prime umber the next step is to get the first n primes
  # we instantiate the primes array empty
  array_of_primes = []
  counter = 1
  while array_of_primes.length < n
    if is_a_prime.call(counter)
      array_of_primes << counter
    end

    counter += 1
  end

  # now that we have our primes, we can start printing the table
  array_of_primes.each do |row_multiplier|
    p array_of_primes.map { |e| e * row_multiplier  }
  end
end

# now I can call my prime_table method for 10 as the challenge requested if there is no argument given, or a custom input if one is given

argument = ARGV.shift
if argument.nil?
  prime_table(10)
else
  prime_table(argument.to_i)
end

# testing my output
# prime_table(5)
# prime_table(10)
# prime_table(15)
# prime_table(18)
# prime_table(17)


# please refer to the test.rb file for a more verbose test of my prime method

