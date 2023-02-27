class Account
     def interest_rate(amount)
        case amount
            when (0...1000)
               0.5             
             when (1000...5000)
               1.621    
             when (5000..)
               2.475
             else 
               -3.213     
      end
   end
   def annual_balance_update(principal)
       rate = interest_rate(principal)
    annual_interest = principal*rate*1/100
     annual_interest + principal
   end
   def years_before_desired_balance(a, b)
       count = 0
       while (a < b )
           a = annual_balance_update(a)
           count +=1
       end

       puts count
   end
end
p1= Account.new
p1.years_before_desired_balance(200.75,214.88)

