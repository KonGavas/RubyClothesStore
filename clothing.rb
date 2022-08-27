# This class might be useless after all
# TODO: possibly remove this class
class Clothing
    attr_accessor :price, :type

    def initialize(type)
        @type = type
        case type
        when 'jeans'
            @price = 50
        when 'tshirt'
            @price = 15
        when 'sweater'
            @price = 20
        else
            raise StandardError.new "From Clothing initialize method: Invalid clothing type!"
        end
    end
end