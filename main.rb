require_relative "shoppingcart.rb"
require_relative "appinterfacemethods.rb"

include AppInterface

shoppingcart = Shoppingcart.new()

AppInterface.welcometext

# print "\nChoice: "
# if ARGV[0].nil?
#     input = gets.chomp().to_i
# else
#     #This is for using rake to run bad-input tests.
#     #Makes it so we can pass an argument to main.rb when calling it.
#     input = ARGV[0].to_i
# end

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