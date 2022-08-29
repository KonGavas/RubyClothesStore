task default: %w[runmainallinputs testresult1 testresult2 testresult3 testbadinputs1]

desc "This task goes through all valid user-inputs and finishes with checkout"
task :runmainallinputs do
    ruby "main.rb 1 2 3 5 6"
    puts "runmainallinputs was successful"
end

task :testresult1 do
    require_relative "shoppingcart.rb"
    require_relative "appinterfacemethods.rb"

    include AppInterface

    shoppingcart = Shoppingcart.new()

    shoppingcart.addjeanstocart
    shoppingcart.addtshirttocart
    shoppingcart.addsweatertocart
    shoppingcart.addsweatertocart
    shoppingcart.addsweatertocart

    totalcost = shoppingcart.estimatetotalcost
    if totalcost.to_f != 122.0
        raise Exception "Total cost is #{totalcost} when it should be 122!"
    else
        puts "testresult1 was successful!"
    end
end

task :testresult2 do
    require_relative "shoppingcart.rb"
    require_relative "appinterfacemethods.rb"

    include AppInterface

    shoppingcart = Shoppingcart.new()

    shoppingcart.addjeanstocart
    shoppingcart.addjeanstocart
    shoppingcart.addjeanstocart
    shoppingcart.addjeanstocart
    shoppingcart.addjeanstocart

    shoppingcart.addtshirttocart
    shoppingcart.addtshirttocart
    shoppingcart.addtshirttocart

    shoppingcart.addsweatertocart

    totalcost = shoppingcart.estimatetotalcost
    if totalcost.to_f != 300.0
        raise Exception "Total cost is #{totalcost} when it should be 300!"
    else
        puts "testresult2 was successful!"
    end
end

task :testresult3 do
    require_relative "shoppingcart.rb"
    require_relative "appinterfacemethods.rb"

    include AppInterface

    shoppingcart = Shoppingcart.new()

    shoppingcart.addtshirttocart
    shoppingcart.addtshirttocart
    shoppingcart.addtshirttocart
    shoppingcart.addtshirttocart

    shoppingcart.addsweatertocart
    shoppingcart.addsweatertocart
    shoppingcart.addsweatertocart
    shoppingcart.addsweatertocart

    totalcost = shoppingcart.estimatetotalcost
    if totalcost.to_f != 106.0
        raise Exception "Total cost is #{totalcost} when it should be 106!"
    else
        puts "testresult3 was successful!"
    end
end

task :testbadinputs1 do
    ruby "main.rb a abc # % ^ \\ . 7 8 9 13 6"
    puts "testbadinputs1 was successful"
end