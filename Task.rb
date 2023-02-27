module Bank
    class Account
     attr_accessor :balance
     def initialize(balance)
             @balance = balance
         end  
        def deposit
            puts "Enter the amount that yor want to deposit: "
            amount=gets.chomp.to_i
            @balance= @balance+amount
            puts "#{@balance}"
            return @balance
        end     
        def withdraw 
            puts "Enter the amount that you want to withdraw: "
            withdraw=gets.chomp.to_i
            @balance= @balance - withdraw
            puts "#{@balance}"
            return  @balance
        end
    end
    class Atm
        def initialize(a)
             @account_balance=a
         end
         def start
             puts "enter your pin" 
             @pin=gets.chomp.to_i
             @condition = true
             while(@condition)
                 if @pin == 1111 then
                     puts "1.check balance"
                     puts "2.deposit"
                     puts "3.Withdrow"
                     puts "4.Exit"
                     puts "enter your choice"
                     choice=gets.chomp.to_i
                     case choice
                     when 1
                    puts @account_balance.balance
                     when 2  
                      proc_test = Proc.new { @account_balance.deposit}
                      proc_test.call
                               
                     when 3
                      lambda_demo = lambda {@account_balance.withdraw}
                      lambda_demo.call
                     else
                       @condition = false
                     end
                  else
                     puts "Wrong pin !! Please enter correct pin"
		     start
                     break
                end  
            end
         end
    end
end


account=Bank::Account.new(100)
atm=Bank::Atm.new(account)
atm.start
