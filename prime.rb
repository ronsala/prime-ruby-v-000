require 'benchmark'

def prime?(num)
  return false if num <= 1
  ary = (2...num).to_a
  if ary.none? { |i| num % i == 0 }
    true
  else
    false
  end
end

def prime?(num)
  return false if num <= 1
  (2...num).none? { |i| num % i == 0 } ? true : false
end

def prime?(num)
  return false if num <= 1
  (2...num).any? { |i| num % i == 0 } ? false : true
end
