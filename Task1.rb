COMPANY_NAME = "Software Ltd."
$productcompany = "DELL"

class Product    
  def initialize(name,price)
  @pname=name
  @pprice=price
  end
  def create
     puts "enter your name"
      @pn=gets
      puts "enter gst"
      @p=gets
   end

   def calc
     final=@pprice.to_i
     final1=@p.to_i
     total=final * final1 / 100
     @answer=@pprice + total
   end
   def get_user
     create
     calc
     puts "Welcome to our #{COMPANY_NAME}"
     puts "Welcome #{@pn}. Your invoice with #{@p}% gst are below"
     puts "Product details"
     puts "#{$productcompany} :: #{@pname} - #{@answer}" 
     end
   begin 
      product1=Product.new('keyboard',100)
      product1.get_user
      product2=Product.new('mouse',200)
      product2.get_user
   end
end

