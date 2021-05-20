# Let's put all students into an array
students = [
    {name: "Dr. Hannibal Lecter", cohort: :november},
    {name: "Darth Vader", cohort: :november},
    {name: "Nurse Ratched", cohort: :november},
    {name: "Micheal Corleone", cohort: :november},
    {name: "Alex DeLarge", cohort: :november},
    {name: "The Wicked Witch of the West", cohort: :november},
    {name: "Terminator", cohort: :november},
    {name: "Freddy Krueger", cohort: :november},
    {name: "The Joker", cohort: :november},
    {name: "Joffrey Baratheon", cohort: :november},
    {name: "Norman Bates", cohort: :november}
]
# header method
def print_header
puts "The students of Villains Academy"
puts "------------"
end

def print(students)
  index = 0
  until index == students.length  
  # students.each_with_index do |student, index|
    # if students[index][:name][0].downcase == "m"
    # if students[index][:name].length < 12
      puts "#{index + 1}. #{students[index][:name]} (#{students[index][:cohort]} cohort)"
      index += 1
    end

end
def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

def input_students
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice"
    # create an empty array
    students = []
    # get the first name
    name = gets.chomp
    # while the name is not empty, repeat this code
    puts "Enter nickname"
    nickname = gets.chomp
    puts "Enter student hobbies"
    hobbies = gets.chomp
    while !name.empty? do
        # add the student hash to the array
        students << {name: name, cohort: :november, nickname: nickname, hobbies: hobbies}
        puts "Now we have #{students.count} students"
        # get another name from the user
        name = gets.chomp 
    end
    # return the array of students
    students
end

students = input_students
print_header
print(students)
print_footer(students)


