


  @answers = ["yes", "no", "maybe", "without a doubt", "most likely", "signs point to yes", "outlook good", "it is certain"]


def menu
  puts "1 Enter your question type (Quit to quit)"
  puts "2 to add a answer."
  puts "3 to Quit"
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
    puts "Quitting goodbye"
    exit
  when print_answers
    print_answers
  end 
end

def questions
  puts "What is your question?"
  user_input = gets.chomp
  puts @answers.sample
   menu
  
end

def add_answers
  puts "add a answer"
  user_input = gets.chomp
  @answers << user_input
  menu
end

def print_answers
@answers.each_with_index do |answers, index|
    puts "#{index + 1}) #{answers}"
    
    end
    menu
  end

  def reset_answers
    
  end


menu


