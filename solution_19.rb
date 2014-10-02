# Assignment 19
# Create a new repository
# Write a Ruby script that uses the Rails ActiveSupport gem, installed via a Gemfile and bundler
# The script should do the following when run:


#1. Show the date of the beginning of the current week
#2. Show what the date will be in 30 days
#3. Show what day of the week today's date will fall on next year
#4. Show what day of the week the user's birthday will be on this year (don't forget to ask for it!)
#5. Using the String class, pluralize a singular word the user enters and show the singular for a plural word the user enters
#6. Using the String class, truncate a phrase the user enters to 20 letters
#7. Using the Array class, convert an array of three words to a sentence with one command

# You'll need the following Rails extensions that come with ActiveSupport:
#- http://api.rubyonrails.org/v4.0.3/classes/Date.html
#- http://api.rubyonrails.org/v4.0.3/classes/String.html
#- http://api.rubyonrails.org/v4.0.3/classes/Array.html
#- http://api.rubyonrails.org/v4.0.3/classes/Numeric.html


require 'active_support'
require 'active_support/all'


today = Date.today

puts "This week began on #{today.beginning_of_week(:sunday)}."
puts "In 30 days the date will be #{today.days_since(30)}."
puts "#{today.years_since(1)} will be on a #{today.years_since(1).strftime('%A')} next year."

print "Please enter your birthday (YYYY-MM-DD): "
answer = gets.chomp
puts answer.to_date.change(year: today.year).strftime("Your birthday will be on a %A this year.")

print "Please enter a singular word so I may pluralize it: "
singular_answer = gets.chomp
puts "#{singular_answer.pluralize}"

print "Please enter a plural word so I may singularize it: "
plural_answer = gets.chomp
puts "#{plural_answer.singularize}"

print "Please enter a phrase that i will truncate: "
answer = gets.chomp
puts "#{answer.truncate(20)}"

puts ["Audi", "BMW", "Mercedes"].to_sentence
