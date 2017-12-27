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

def prime2?(num)
  return false if num <= 1
  (2...num).none? { |i| num % i == 0 } ? true : false
end

def prime3?(num)
  return false if num <= 1
  (2...num).any? { |i| num % i == 0 } ? false : true
end

Benchmark.bm(10) do |x|
  x.report('prime?:')   { prime?(100_000) }
  x.report('prime2?:')  { prime2?(100_000) }
  x.report('prime3?:')  { prime3?(100_000) }
end
