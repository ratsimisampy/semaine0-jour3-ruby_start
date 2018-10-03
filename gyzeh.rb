#pyramide de Gyzeh

def user_ask()
    print "Salut! Combien d'etage veux-tu ? "
    n = gets.chomp.to_i
end

def odd_pyramide(floor)
	
    left = Array.new
    right = Array.new
	if floor > 0 && floor < 26
		i = 1
		floor.times {  
            left[floor] = (" "* floor) + ("#"*i)
            right[floor] = ("#"*(i-1)) + (" "* floor)
            puts left[floor] + right[floor]
			i = i + 1
			floor = floor - 1
		}
	else
		puts "Erreur de saisie!"
	end
end

def perform
    odd_pyramide(user_ask)
end

perform