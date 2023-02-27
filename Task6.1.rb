$i=5
$j=1
class Deep
  for $i in (5).downto(1) do
    for $j in 1..$i do 
      print "*"
      $j=$j+1 
    end
    puts
    $i=$i-1
   end

end
