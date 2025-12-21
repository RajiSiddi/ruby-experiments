print "Enter your name :"
name = gets.chomp
print "Enter your age :"
age = gets.to_i
print "Enter your city :"
city = gets.chomp

puts "My name is #{name}, my age is #{age} and I live in #{city}"

print "lets do some arithmetic operations\n"

    print "Enter the first value : "
    #Convert String to an integer next and gets: to get the data
    first_num = gets.to_i

    print "Enter the second value : "
    second_num = gets.to_i
# add two values
    puts first_num.to_s + "+" + second_num.to_s + "=" + (first_num+second_num).to_s

# difference of values
puts first_num.to_s + "-" + second_num.to_s + "=" + ((first_num-second_num).abs).to_s

# Multiply
puts first_num.to_s + "*" + second_num.to_s + "=" + (first_num*second_num).to_s

#Divide two values
begin
puts first_num.to_s + "/" + second_num.to_s + "=" + ((first_num/second_num)).to_s
rescue ZeroDivisionError    #ZeroDivisionError - exception Class
    puts "Error: cannot divide by zero"
end

