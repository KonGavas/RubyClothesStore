class Shoppingcart
    attr_accessor :contents

    def initialize
        @contents = [
            ['jeans', 0],
            ['tshirts', 0],
            ['sweaters', 0]
        ]
    end

    def getjeanscount
        jeansarray = @contents.select{|a| a[0]=='jeans'}[0]
        return jeansarray[1]
    end

    def gettshirtscount
        tshirtsarray = @contents.select{|a| a[0]=='tshirts'}[0]
        return tshirtsarray[1]
    end

    def getsweaterscount
        sweatersarray = @contents.select{|a| a[0]=='sweaters'}[0]
        return sweatersarray[1]
    end

    def addjeanstocart
        jeansarray = @contents.select{|a| a[0]=='jeans'}[0]
        jeansarray[1] += 1
    end

    def addtshirttocart
        tshirtsarray = @contents.select{|a| a[0]=='tshirts'}[0]
        tshirtsarray[1] += 1
    end

    def addsweatertocart
        sweatersarray = @contents.select{|a| a[0]=='sweaters'}[0]
        sweatersarray[1] += 1
    end

    def estimatetotalcost
        cost = 0.0
        #There is no promotion for jeans
        cost += getjeanscount * 50
        
        #If you buy more than two sweaters, you will have a 5% discount on the sweaters
        if getsweaterscount > 2
            cost += 0.95 * (getsweaterscount * 20)
        else
            cost += getsweaterscount * 20
        end
        
        #For every t-shirt that you buy, you will get a second t-shirt for free
        #As long as @contents['tshirts'] is always Int, we do not need this if statement
        # if @contents['tshirts'] >= 2
        #     cost += (@contents['tshirts'] / 2) * 15
        #     cost += (@contents['tshirts'] % 2) * 15
        # else
        #     cost += @contents['tshirts'] * 15
        # end
        cost += (gettshirtscount / 2) * 15
        cost += (gettshirtscount % 2) * 15
        
        return cost
    end
end