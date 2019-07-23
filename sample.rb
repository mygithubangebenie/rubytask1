class Player
    
	def hand(hand)
		return hand
    end
end

class Enemy

	def hand(hand)
      return hand
    end

end
puts "Type the Number from zero to two:"
	 puts "0: Goo"
	 puts "1: Choki"
	 puts "2: Par"
	 
	 class Janken
		def pon(player_hand, enemy_hand)
			result=((player_hand-enemy_hand+3)%3)
			if(result==2)
				return "Win"
			elsif(result==1)
				return "Loss"
			else
				return "Draw" 
			end

		end
	 end
	 
while(true) do

	str=gets.to_i
	if(str==0)
		break
	end

number=gets.to_i
if(number<0 || number>3)
	puts "It's a Wrong number"
else
	player = Player.new()
	player_hand = player.hand(number)
	arr=[0,1,2]
	randomly=arr[rand(arr.count)];

	enemy = Enemy.new()
	enemy_hand=enemy.hand(randomly)
	janken = Janken.new()
	result = janken.pon(player_hand,enemy_hand)
	if(result=="Win")
		puts "The hand of the other party is throb. You are the winner."
		break
	elsif(result=="Loss")
       puts "you are loss"
		break
	else
		puts "nothing" 

	end
	
end
end
