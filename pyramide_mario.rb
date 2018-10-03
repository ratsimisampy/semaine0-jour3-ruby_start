#pyramide

print "saisir un nombre entre 1 et 25: "
n = gets.chomp.to_i
if n > 0 && n < 26
	i = 1
	n.times {  
		puts (" "* n)+("#"*i)
		i = i + 1
		n = n - 1
	}
else
	puts "Erreur de saisie!"
end


