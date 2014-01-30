
ones = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']

teens = ['ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

tens = ['twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']

# One to Nine
n_ones = ones.collect{|o| o.length}
a = n_ones.inject(:+)

# Ten to Nineteen
n_teens = teens.collect{|e| e.length}
b = n_teens.inject(:+)

#Twenty to Ninety Nine
c = 0

n_tens = tens.collect{|n| n.length}

c = n_tens.inject(:+)

r = 0
n_tens.each do |n|
   r += (n*ones.size) + a 
end

#Hundreds
d = 0

hundred = "hundred".length
d += (hundred * ones.size) + a

n_and = "and".length

e = 0
n_ones.each do |n|
   e += ((hundred + n_and + n) * ones.size) + a  
end

f = 0
n_ones.each do |n|
   f += ((hundred + n_and + n) * teens.size) + b
end

g = 0
n_ones.each do |n|
   g += ((hundred + n_and + n) * tens.size) + c 
end

n_ones.each do |n|
  n_tens.each do |t|
     h += ((hundred + n_and + t + n) * n_ones.size)  + a
  end
end

p  a + b + c + r + d + e + f + g + h + "onethousand".length
