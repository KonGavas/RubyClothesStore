module AppInterface
    def welcometext
        puts "-------------------------------------------------------------------"
        puts "Welcome to our clothes store! We sell t-shirts, jeans and sweaters."
        puts "-------------------------------------------------------------------"
    end

    def menutext
        puts "\nSelect a clothing item to add to the shopping cart by inputting a number"\
            +" from 1 to 3\n(or input 0 to take a look at our promotions):"
        puts "1. Jeans \n2. T-Shirt \n3. Sweater \n\n0. Show Promotions"
    end

    def showpromotions
        puts "-------------------------------------------------------------------"
        puts "Our promotions:"
        puts "\t -For every t-shirt that you buy, you will get a second t-shirt for free"
        puts "\t -If you buy more than two sweaters, you will have a 5% discount on the sweaters (in the total of sweaters)"
        puts "-------------------------------------------------------------------"
    end
end