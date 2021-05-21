@students = []

def print_header
  puts "The students of Villains Academy".center(50)
  puts "-------------".center(50)
end 

def print_student_list
  list_by_cohort = {}
  @students.map do |student|
    cohort = student[:cohort]
    name = student[:name]
    if list_by_cohort[cohort] == nil
      list_by_cohort[cohort] = [name]
    else
      list_by_cohort[cohort].push(name)
    end
  end
  if @students.length > 0
    list_by_cohort.map do |cohort, name|
      puts "#{cohort} cohort"
      puts name
      puts "\n"
    end
  end
end

def print_footer
  if @students.count == 1
    puts "Overall, we have 1 great student"
  else
    puts "Overall, we have #{@students.count} great students"
  end
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  @students = []
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
    @students << {name: name, cohort: cohort}
    puts "Now we have #{@students.count} students"
    puts "Enter another name"
    end
  @students
end

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end 

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit"
end

def show_students
  print_header
  print_student_list
  print_footer
end

def process(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students
  when "9"
    exit
  else
    puts "I don't know what you meant, try again"
  end
end 

interactive_menu@students = []

def print_header
  puts "The students of Villains Academy".center(50)
  puts "-------------".center(50)
end 

def print_student_list
  list_by_cohort = {}
  @students.map do |student|
    cohort = student[:cohort]
    name = student[:name]
    if list_by_cohort[cohort] == nil
      list_by_cohort[cohort] = [name]
    else
      list_by_cohort[cohort].push(name)
    end
  end
  if @students.length > 0
    list_by_cohort.map do |cohort, name|
      puts "#{cohort} cohort"
      puts name
      puts "\n"
    end
  end
end

def print_footer
  if @students.count == 1
    puts "Overall, we have 1 great student"
  else
    puts "Overall, we have #{@students.count} great students"
  end
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  @students = []
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
    @students << {name: name, cohort: cohort}
    puts "Now we have #{@students.count} students"
    puts "Enter another name"
    end
  @students
end

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end 

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit"
end

def show_students
  print_header
  print_student_list
  print_footer
end

def process(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students
  when "9"
    exit
  else
    puts "I don't know what you meant, try again"
  end
end 

interactive_menu
