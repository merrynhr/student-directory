# header method
def print_header
    puts "The students of Villains Academy".center(50)
    puts "------------".center(50)
  end
   
  def print(students)
    # index = 0
    # until index == students.length
    # students.each_with_index do |student, index|
    #   if students[index][:name][0].downcase == "m"
    #   if students[index][:name].length < 12
    #     puts "#{index +1}. #{students[index][:name]} (#{students[index][:cohort]} cohort)"
    #     index += 1
    #   end  
    list_by_cohort = {}
    students.map do |student|
      cohort = student[:cohort]
      name = student[:name]
      if list_by_cohort[cohort] == nil
         list_by_cohort[cohort] = [name]
      else 
        list_by_cohort[cohort].push(name)
      end
    end 
    list_by_cohort.map do |cohort, name|
      puts "#{cohort} cohort"
      puts name
      puts "\n"
    end
  end
  
  def print_footer(students)
    if students.count == 1
      puts "Overall, we have 1 great student"
    else
      puts "Overall, we have #{students.count} great students"
    end
  end
   
  def input_students
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice"
    # create an empty array
    students = []
    name = "IHopeNoBodyTypesThis"
    while !name.empty? do
      # get the first name
      name = gets.chomp
      if name == ""
        break
      end
      puts "Enter cohort"
      cohort = gets.chomp
      if cohort == ""
        cohort = :Unknown
      else 
        cohort = cohort.to_sym
      end
      puts "Enter nickname"
      nickname = gets.chomp
      puts "Enter students hobbies"
      hobbies = gets.chomp
      # while the name is not empty, repeat this code
      # add the student hash to the array
      students << {name: name, cohort: cohort, nickname: nickname, hobbies: hobbies}
      puts "Now we have #{students.count} students"
      # get another name from the user
      puts "Enter another name"
      end
      # return the array of students
    students
  end
   
  students = input_students
  print_header
  print(students)
  print_footer(students)

