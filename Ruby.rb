### print statement --------------------------------
print "Hello Worlds\n"

### puts statement --------------------------------


puts "Hello" # adds break line automatically
puts "World" # adds break line automatically

### Variavbles --------------------------------
myName = "Rehan"
myAge = "24"

puts("My name is " + myName + ". My age is " +  myAge)


### Datatypes --------------------------------

name = "rehan"
age = 24
cgpa = 3.02
isMale = true
isMarried = false
credit_hours = nil


### Strings Methods --------------------------------

phrase = "        Ruby on Rails      "

puts phrase.strip() # removes whitespaces and prints Ruby on Rails
puts phrase.strip.length # removes whitespaces and prints Ruby on Rails

phrase = "Ruby on Rails"

puts phrase.upcase() # prints RUBY ON RAILS
puts phrase.downcase() # prints ruby on rails
puts phrase.length() # prints 13 
puts phrase.include? "Ruby" # prints true
puts phrase.include? "Python" # prints false
puts phrase[0] # prints R
puts phrase[0,6] # prints Ruby o
puts phrase.index("o") # prints 5
puts phrase.index("Rail") # prints 8
puts phrase.index("T") # prints (nothing)
puts "Rehan".upcase # prints REHAN
puts "Rehan".upcase() # prints REHAN


### Numbers and Math --------------------------------

puts 3
puts 3.1415
puts -10
puts 6 + 9 # all arithematic operations
puts 2 ** 3 # cube
puts 10 % 3 # remainder

pi = 3.1415

puts("PI value is " + pi.to_s)  # to_s = casting to string

### Number Methods --------------------------------

puts -19.abs
puts 6.2323.round
puts 6.8923.round
puts 6.8923.ceil
puts 6.8923.floor

puts Math.sqrt(9)
puts Math.log(1)

puts 3 + 4 
puts 3.0 + 4 
puts 10 / 4 
puts 10 / 4.0
puts 10.0 / 4


### Input --------------------------------

# puts "Enter Your Name: "
# name = gets 
# puts ("hello, " + name + " , welcome to ruby")


# To remove newline while input
# name = gets.chomp
# puts ("hello, " + name + " , welcome to ruby")


# ### Calculator --------------------------------
# # For integers
# puts "Enter a number: "
# num1 = gets.chomp
# puts "Enter an other number: "
# num2 = gets.chomp
# puts(num1.to_i + num2.to_i)

# # For Floats
# puts "Enter a number: "
# num1 = gets.chomp.to_f
# puts "Enter an other number: "
# num2 = gets.chomp.to_f
# puts(num1 + num2)


### Arrays --------------------------------

myArray = Array[1, "Rehan", false]

puts myArray
puts myArray[1]
puts myArray[-1]
myArray[2] = true
puts myArray[0,3]

### Dynamic Array --------------------------------

firends = Array.new

firends[0] = "Rehan"
firends[1] = "Khan"

puts firends  

puts firends.length
puts firends.include? "Usama"
puts firends.reverse
puts firends.sort # Only for same data


### Hashes --------------------------------

cities = {
    :Lahore => "LHR",
    "Karachi" => "KHI",
    "Islamabad" => "ISB",
    1 => "One"
}

puts cities
puts cities["Karachi"]
puts cities[:Lahore]
puts cities[1]


### Methods / Functions --------------------------------

def sayHi
    puts "Hiii"
end

sayHi


def greet(name)
    puts("hello " + name)
end

greet("Rehan")

# Return
def sum(num1, num2)
    num1+num2
end

puts sum(32,4)

def sum(num1, num2)
    return num1
    num1+num2
end

puts sum(32,4)


def sum(num1, num2)
    return num1, num2
    num1+num2
end

puts sum(32,4)

def sum(num1, num2)
    return num1, num2, 7
    num1+num2
end

puts sum(32,4)[2]


### If elsif else --------------------------------

isMale = false
isSingle =  false

# if isMale or isSingle

if isMale and isSingle
    puts "Single Male"
elsif isMale and !isSingle
    puts "Salut"
elsif !isMale and isSingle
    puts "Salut Salute"
else
    puts "Go Home"
end


### Get Max Functions --------------------------------

def max(num1, num2, num3)
    if num1 >= num2 and num1 >= num3
        return num1
    elsif num2 >= num1 and num2 >= num3
        num2
    else 
        return num3
    end
end

puts max(1, 111, 12)

### Case When --------------------------------

def getDayName(day)
    dayName = ""

    case day
    when "mon"
        dayName = "Monday"
    when "tues"
        dayName = "Tuesday"
    when "wed"
        dayName = "Wednesday"
    when "thur"
        dayName = "Thursday"
    when "fri"
        dayName = "Friday"
    when "sat"
        dayName = "Saturday"
    when "sun"
        dayName = "Sunday"
    else
        dayName = "Unknown"
    end

    return dayName
end

puts getDayName("asdfasd")


### While Loop --------------------------------

count = 0

while count < 5
    puts count
    count += 1
end


### For Loop --------------------------------


for firend in firends
    puts firend
end

# Number Loop

for value in 0..5
    puts value
end


# Each Loop

firends.each do |firend|
    puts firend
end


# Times Loop

5.times do |index|
    puts index
end

# Exponential Function

def expo(base, power)
    result = 1
    power.times do |index|
        result = result * base
    end
    return result
end

puts expo(9,2)


### Multi Line Comment --------------------------------

=begin
    This is a multi line comment
    This is a comment that contains multiple lines
    This is a comment
=end

### Reading Files --------------------------------

# Read Only mode

File.open("dev.txt", "r") do |file|
    
    # puts file.read() # prints whole file
    # puts file.read().include? "Rehan" # prints true
    # puts file.readline() # prints first line
    # puts file.readlines() # prints array of lines
    puts file.readlines()[1] # prints Rehan
    # puts file.readchar() # prints first char
    # puts file.readchar() # prints 2nd char
    # puts file.readchar() # prints 3rd char
    # puts file.readchar() # prints 4th char

    # for line in file.readlines 
    #     puts line
    # end
end

# File stored in a variable

file = File.open("dev.txt", "r")

puts file.read

file.close


### Writing to Files --------------------------------

# Appemd Mode

File.open("dev.txt", "a") do |file|
    file.write("Rehan, Team Lead\n")
    file.write("Usama, Team Lead\n")
end

# Overwrite Mode

File.open("dev.txt", "w") do |file|
    file.write("Sam, PM\n")
end

# Create New File Mode

File.open("index.html", "w") do |file|
    file.write("<h1>Hello World!</h1>")
end

# Overwrite Mode

File.open("dev.txt", "r+") do |file|
    file.readline
    file.write("Sam, PM\n")
    file.write("Sam, GM\n")
end

### Exception Handling --------------------------------

begin
    num = 10 / 0
rescue ZeroDivisionError
    puts "Division by zero failed"
end

begin
    firends["rehan"]
rescue TypeError => e
    puts e
end

### Classes and Objects --------------------------------

 class Book
    attr_accessor :title, :author, :pages 
 end

 # Object

book1 = Book.new
book1.title = "Harry Potter"
book1.author = "JK Rowling"
book1.pages = 300

puts book1.title
puts book1.author
puts book1.pages


# Initialize Method / Constructor

class Book
    attr_accessor :title, :author, :pages 

    def initialize(title, author, pages)
        @title = title
        @author = author
        @pages = pages
    end
end

book2 = Book.new("Automate with the boring stuff", "James", 300)

puts book2.title
puts book2.author
puts book2.pages


class Student
    attr_accessor :name, :degree, :gpa
    def initialize(name, degree, gpa)
        @name = name
        @degree = degree
        @gpa = gpa
    end

    def hasHonors
        if @gpa >= 3.5
            return true
        end
        return false
    end
end

student1 = Student.new("Rehan", "BSCS", 3.019)
student2 = Student.new("Rehan", "BSCS", 3.79)

puts student1.hasHonors
puts student2.hasHonors

### Inheritance --------------------------------
 
class Chef
    
    def makeChicken
        puts "Chicken"
    end

    def makeSalad
        puts "Salad"
    end

    def makeSpecial
        puts "Fried"
    end
end

class ItalianChef < Chef
    
    def makePizza
        puts "Pizza"
    end
    # Fucntion Over Riding
    def makeSpecial
        puts "Pasta"
    end
end

chef1 = ItalianChef.new

chef1.makeChicken
chef1.makePizza
chef1.makeSpecial

### Module --------------------------------
# module Tools

#     def sayHi(name)
#         puts "Hi #{name}"
#     end
    
#     def sayBye(name)
#         puts "Bye #{name}"
#     end
# end

require_relative "dev_module.rb"

include Tools

Tools.sayHi("Sam")
Tools.sayBye("Sam")
Tools.greet("Sam")

 