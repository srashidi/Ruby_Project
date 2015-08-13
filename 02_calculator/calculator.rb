def add(a,b)
	a+b
end

def subtract(a,b)
	a-b
end

def sum(array)
	sum = 0
	if array.length > 0
		array.each do |i|
			sum += i
		end
	end
	sum
end

def multiply(array)
	product = 1
	array.each do |i|
		product *= i
	end
	product
end

def power(a,b)
	product = 1
	b.times do
		product *= a
	end
	product
end

def factorial(number)
	product = 1
	i = number
	number.times do
		product *= i
		i = i-1
	end
	product
end