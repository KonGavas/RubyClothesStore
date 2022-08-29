module AppInterface
    def welcometext
        puts "-------------------------------------------------------------------"
        puts "Welcome to our clothes store! We sell t-shirts, jeans and sweaters."
        puts "-------------------------------------------------------------------"
    end

    def menutext
        puts "\nSelect a clothing item to add to the shopping cart by inputting a number"\
            +" from 1 to 3:"
        puts "1. Jeans \n2. T-Shirt \n3. Sweater"

        puts "\nInput 5 to take a look at our promotions or 6 to Proceed to Checkout: "
        puts "5. Show Promotions \n6. Proceed to Checkout"
    end

    def showpromotions
        puts "//Our Promotions//"
        puts " -For every t-shirt that you buy, you will get a second t-shirt for free"
        puts " -If you buy more than two sweaters, you will have a 5% discount on the sweaters (in the total of sweaters)"
        puts ""
    end

    def displaycartcontents(shoppingcart)
        if shoppingcart.class.name != 'Shoppingcart'
            raise Exception.new "AppInterface.displaycartcontents method: "\
                +"given parameter is not of type Shoppingcart"
        end
        puts "Shopping Cart Contents:"
        puts " Jeans: #{shoppingcart.getjeanscount}"
        puts " T-Shirts: #{shoppingcart.gettshirtscount}"
        puts " Sweaters: #{shoppingcart.getsweaterscount}"
    end

    def checkout(totalcost)
        puts "//Proceeding to Checkout//"
        puts "\nTotal Costs: #{totalcost}"
        puts "\nThank you for shopping on our clothes store!"
    end
end