
def ask_first_name()
    print "Quel est ton prenom?"
    prenom = gets.chomp
end

def say_hello(first_name)
    p "bonjour #{first_name} "
end

def perform
    say_hello(ask_first_name)
end

perform
