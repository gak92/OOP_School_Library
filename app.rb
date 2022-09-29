class App
  def initialize
  end

  def run
    puts "Welcome to School Library App!"
    while(true)
      main_menu()

      print "Enter your option: "
      input = gets.chomp

      if input == "7"
        puts "Thanks for using the app"
        break
      end

      options(input)
    end
  end

  def main_menu
    puts "----------------"
    puts "Please choose an option by enter a number: "
    puts "1 - List all books"
    puts "2 - List all people"
    puts "3 - Create a person"
    puts "4 - Create a book"
    puts "5 - Create a rental"
    puts "6 - List all rentals for a given person id"
    puts "7 - Exit"
  end

  def options(input)
    case input
    when '1'
      list_all_books
    when '2'
      list_all_people
    when '3'
      create_a_person
    when '4'
      create_a_book
    when '5'
      create_a_rental
    when '6'
      list_all_rentals_by_person_id
    else
      puts "Please choose a valid option"
    end
  end

  def list_all_books
    puts "List all Books"
  end

  def list_all_people
    puts "List all People"
  end

  def create_a_person
    puts "Create a person"
  end

  def create_a_book
    puts "Create a book"
  end

  def create_a_rental
    puts "Create a rental"
  end

  def list_all_rentals_by_person_id
    puts "List all rentals by person id"
  end

end
