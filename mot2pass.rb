
def user_ask()
    print "Saisir le mot de passe:"
    gets.chomp
end

def define_password(userPwd)
    user_password_01 = userPwd
end

def password_verification?(userPwd)     
    user_password_02 = userPwd
    if !user_password_02.nil?
        pwd2Compare = define_password(user_ask)
        if IsPasswordOk?(user_password_02,pwd2Compare)
           #puts "Mots de passe identiques"
           return true     
        else
           #puts "Mots de passe differents"     
           return false
        end 
    end
end

def IsPasswordOk?(pass1, pass2)
    pass1 == pass2
end

def connect(myPass)
    #tant que password_verif() == false
    #       on rappelle password_verif() elle meme
    while !password_verification?(myPass)
        puts "Erreur de mot de passe"
    end
    puts "You are online!"
end

def perfom
    connect(user_ask)
end

perfom