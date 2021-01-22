require_relative 'field'

class Manage_farm

    def initialize(user_name)
        puts "Welcome, #{user_name}"
    end


    def main_menu
        while true
            print_main_menu
            user_choice = gets.to_i
            case user_choice
            when 1 then add_field
            when 2 then harvest_the_farm
            when 3 then relax
            when 4 then yield_to_date
            when 5 then field_status
            when 6 then clear_the_screen
            when 7 then exit
            end
        end
    end
    

    def print_main_menu
        puts "\n"
        puts "Welcome to the farm manager.  What would you like to do today?"
        puts "[1] Add a field to your farm"
        puts "[2] Harvest your entire farm"
        puts "[3] Relax"
        puts "[4] Check your last year's yield and your total yield to date"
        puts "[5] Check the status of one of your fields"
        puts "[6] Clear the screen"
        puts "[7] Exit the application"
    end


    def add_field
        puts "Congrats.  You are about to expand your farm"
        puts "What type of field would you like to buy?"
        puts "[1] Corn"
        puts "[2] Wheat"
        type = gets.to_i
        puts "How many hectares would you like to buy"
        area = gets.to_i
        p Field.purchase(type, area)
    end


    def harvest_the_farm
        year_harvest = Field.year_harvest
        puts "The yield from this year's harvest is #{year_harvest}"
        total_harvest = Field.total_harvest
        puts "The toal yield to date for the farm is #{total_harvest}"
    end


    def relax
        Field.display_all_fields
    end

    
    def yield_to_date
        last_years_yield = Field.last_years_harvest
        puts "Your yield from last year's harvest was #{last_years_yield}"
        total_yield = Field.total_harvest
        puts "Your total yield to date from your farm is #{total_yield}"
    end


    def field_status
        puts "Please enter the ID of the field you would like to observe:"
        id = gets.to_i
        p Field.field_status(id)
    end


    def clear_the_screen
        puts "\e[H\e[2J"
    end

end