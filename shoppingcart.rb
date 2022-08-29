class Shoppingcart
    attr_accessor :contents

    def initialize
        @contents = {
            'jeans' => 0,
            'tshirts' => 0,
            'sweaters' => 0
        }
    end

    def addjeanstocart
        @contents['jeans'] += 1
    end

    def addtshirttocart
        @contents['tshirts'] += 1
    end

    def addsweatertocart
        @contents['sweaters'] += 1
    end

    def estimatetotalcost
        cost = 0.0
        #There is no promotion for jeans
        cost += @contents['jeans'] * 50
        
        #If you buy more than two sweaters, you will have a 5% discount on the sweaters
        if @contents['sweaters'] > 2
            cost += 0.95 * (@contents['sweaters'] * 20)
        else
            cost += @contents['sweaters'] * 20
        end
        
        #For every t-shirt that you buy, you will get a second t-shirt for free
        #As long as @contents['tshirts'] is always Int, we do not need this if statement
        # if @contents['tshirts'] >= 2
        #     cost += (@contents['tshirts'] / 2) * 15
        #     cost += (@contents['tshirts'] % 2) * 15
        # else
        #     cost += @contents['tshirts'] * 15
        # end

        cost += (@contents['tshirts'] / 2) * 15
        cost += (@contents['tshirts'] % 2) * 15
        
        return cost
    end
end