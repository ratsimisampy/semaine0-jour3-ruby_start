
#gere l'affichage
def display(result,currentStep)
    if currentStep < @nbStep
        case result
        when 5,6 #avance d'une marche,
            p "Tu avances d'une marche, tu es au #{currentStep}eme etage "
        when 1  # descend d'une marche
            if currentStep == 0
                p "Tu ne peux pas descendre plus bas"
            else  
                p "Tu descend d'une marche, tu es au #{currentStep}eme  "
            end
        when 2,3 ,4 # rien ne se passe 
            p "Tu restes sur place, tu es au #{currentStep}eme etage "    
            
        end
    else 
        puts "Bravo! Tu as atteind le #{@nbStep}eme etage !"
    end
end

def steps(randomResult)
    p "Tu as joue : #{randomResult}"
   # p "ma variable @current = #{@current}"
    case randomResult
        when 5,6 #avance d'une marche,
            @current = @current + 1
        when 1  # descend d'une marche
            if @current > 1
                @current = @current - 1
            end
        when 2, 3, 4 #rien ne se passe 
    end
    display(randomResult, @current)
    
    #return @current
end

#retourne le resultat du lancement de dé , un random
def play
    @current = 0
    r = Random.new 
    while @current < @nbStep
        steps(r.rand(1..6))
       #p @current
    end
end

def perform
    p "=========================="
    p "La partie commence ... "
    
    @nbStep = 10 #dimension du jeu
        
    play    
    
    p "=========================="
end

perform