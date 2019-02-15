require "colorize"
require "pry"

  @answers = ["yes", "no", "maybe", "without a doubt", "most likely", "signs point to yes", "outlook good", "it is certain"]
@answers2 = @answers.clone

def menu
  puts "1 Enter your question".colorize(:green)
  puts "2 to add a answer.".colorize(:green)
  puts "3 Display answers".colorize(:green)
  puts "4 Reset answers".colorize(:green)
  puts "5 Quit".colorize(:green)
  user_selection
 
 
end

def user_selection
  choice = gets.to_i
  case choice
  when 1
    questions
  when 2
    add_answers
  when 3
    print_answers
  when 4
    reset_answers
  when 5
    puts "Quitting Goodbye".colorize(:red)
    exit
  end 
end

def questions
  puts "What is your question?".colorize(:red)
  user_input = gets.chomp
  puts @answers.sample
   menu
  
end

def add_answers
  puts "add a answer".colorize(:blue)
  user_input = gets.chomp
  @answers << user_input
  user_input = @answers
  puts "Can not add existing answer"
  menu
end

def print_answers
@answers.each_with_index do |answers, index|
    puts "#{index + 1}) #{answers}"
    
    end
    menu
  end

  def reset_answers 
    @answers = @answers2
    
    menu
  end


menu

