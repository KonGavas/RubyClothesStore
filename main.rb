require_relative "shoppingcart.rb"
require_relative "appinterfacemethods.rb"

include AppInterface

shoppingcart = Shoppingcart.new()

AppInterface.welcometext

if not ARGV[0].nil?
    #This is for using rake to run bad-input tests.
    #Makes it so we can pass arguments to main.rb when running it.

    if not (ARGV.include?('6'))
        #Append 6 as the last choice so that the application exits
        ARGV.push("6")
    end
    puts "ARGV: #{ARGV}"

    AppInterface.menutext

    for choice in ARGV
        puts ""
        AppInterface.displaycartcontents(shoppingcart)

        puts "\nChoice: #{choice}"

        case choice
        when '1'
            shoppingcart.addjeanstocart
        when '2'
            shoppingcart.addtshirttocart
        when '3'
            shoppingcart.addsweatertocart
        when '5'
            AppInterface.showpromotions
        when '6'
            #Checkout
            totalcost = shoppingcart.estimatetotalcost
            AppInterface.checkout(totalcost)
            break
        else
            puts "\nPlease insert a valid input."
        end
    end
else
    input = 0
    while input != 6
        AppInterface.displaycartcontents(shoppingcart)
        AppInterface.menutext

        print "\nChoice: "
        input = gets.chomp().to_i
        
        system('clear') || system('cls')
        AppInterface.welcometext

        case input
        when 1
            shoppingcart.addjeanstocart
        when 2
            shoppingcart.addtshirttocart
        when 3
            shoppingcart.addsweatertocart
        when 5
            AppInterface.showpromotions
        when 6
            next
        else
            puts "\nPlease insert a valid input."
            puts ""
        end
    end

    #Checkout
    totalcost = shoppingcart.estimatetotalcost
    AppInterface.checkout(totalcost)
end

exit