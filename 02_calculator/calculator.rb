def add(n1, n2)
   n1 + n2
end

def subtract(n1, n2)
    n1 - n2
end

def sum(array)
   array.inject(0) {|sum, i|  sum + i }
end

def multiply(array)
  array.inject(1) { |product, n| product * n }
end

def power(n1, n2)
  n1**n2
end

def factorial(number)
  if number <= 1
    1
  else
    number * factorial(number-1)
  end
end
