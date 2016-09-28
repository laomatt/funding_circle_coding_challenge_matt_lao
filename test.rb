# testing my is_a_prime method (mini rpsec)

def is_a_prime?(number)
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

if is_a_prime?(1) == true
  puts 'passes'
else
  puts 'fails 1'
end

if is_a_prime?(2) == true
  puts 'passes'
else
  puts 'fails 2'
end

if is_a_prime?(3) == true
  puts 'passes'
else
  puts 'fails 3'
end

if is_a_prime?(4) == false
  puts 'passes'
else
  puts 'fails 4'
end

if is_a_prime?(5) == true
  puts 'passes'
else
  puts 'fails 5'
end

if is_a_prime?(6) == false
  puts 'passes'
else
  puts 'fails 6'
end

if is_a_prime?(7) == true
  puts 'passes'
else
  puts 'fails 7'
end

if is_a_prime?(8) == false
  puts 'passes'
else
  puts 'fails 8'
end

if is_a_prime?(9) == false
  puts 'passes'
else
  puts 'fails 9'
end

if is_a_prime?(10) == false
  puts 'passes'
else
  puts 'fails 10'
end

if is_a_prime?(11) == true
  puts 'passes'
else
  puts 'fails 11'
end

if is_a_prime?(12) == false
  puts 'passes'
else
  puts 'fails 12'
end

if is_a_prime?(13) == true
  puts 'passes'
else
  puts 'fails 13'
end

