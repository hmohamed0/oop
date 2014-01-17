class Product
        attr_accessor :price, :name, :category, :quantity 
        def initialize(name, quantity, price, category)
                @tax_rate = 0.1
                @quantity = quantity
                @price = price
                @category = category
                @name = name
        end
        def calculate_sales_tax
                @price * @tax_rate
        end

        def calculate_total
                @price + calculate_sales_tax
        end


end

class ExemptGoods < Product
        def initialize(name, quantity, price, category)
                super
                @tax_rate = 0
        end
end

class ImportGoods < Product
        def initialize(name, quantity, price, category)
                super
                @tax_rate = 0.15
        end
end

class ImportExemptGoods < Product
        def initialize(name, quantity, price, category)
                super
                @tax_rate = 0.05

        end
end

object1 = ExemptGoods.new("book", 1, 12.49, "exempt")
object2 = Product.new("cd", 1, 14.99, "product")
object3 = ExemptGoods.new("chocolate bar", 1, 0.85, "exempt")
object4 = ExemptGoods.new("box of chocolates", 1, 10.00, "exempt")
object5 = ImportGoods.new("bottle of perfume", 1, 47.50, "import")
object6 = ImportGoods.new("bottle of perfume", 1, 27.99, "import")
object7 = Product.new("bottle of perfume", 1, 18.99, "product")
object8 = ExemptGoods.new("packet of headache pills", 1, 9.75, "exempt")
object9 = ExemptGoods.new("chocolates", 1, 11.25, "exempt")


input = [object1, object2, object3]
input2 = [object4, object5]
input3 = [object6, object7, object8, object9]

def print_receipt(input)
        input.each do |x|
                puts "#{x.quantity} #{x.name}: #{x.calculate_total}"
        end

        totalTax = input.inject(0) {|x, y| x + y.calculate_sales_tax}
                puts "Sales Tax: #{totalTax}"

        totalPrice = input.inject(0) {|x, y| x + y.calculate_total}
                puts "Total: #{totalPrice}"
end

puts "Output 1:"
print_receipt(input)
puts ("\n") + "Output 2:"
print_receipt(input2)
puts ("\n") + "Output 3:"
print_receipt(input3)