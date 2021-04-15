def welcome
    puts "Bienvenus dans l'Escalier pour le Paradis!!! Ici pour gagner il te faudras gravir les 10 marches de l'Escalier du Paradis et découvrir ce qui t'attends après la mort..."
    puts "Tu vas lancer un dé (virtuel), si tu fais un 5 ou 6 tu monte d'un marche, un 2, 3 ou 4 tu reste sur place et pour finir, attention, si tu fais un 1 tu redescends d'un cran!"
end

def throw_dice
    puts 'Tape "d" pour lancer le dé'
    print "> "
    throw = gets.chomp
    return throw
end

class Game
    @@steps = 0
    def self.generating_rng
        throw = throw_dice
        d6 = Random.new
        if throw == "d"
            case d6.rand(1..6)
            when 1
                if @@steps > 0
                    puts "Tu as fait un 1! Tu redescend d'une marche! Tu est maintenant sur la marche numéro #{@@steps - 1}"
                    @@steps -= 1
                else
                    puts "Tu as fait un 1! Tu est déjà sur la marche 0, tu ne peux pas descendre plus bas, petit veinard!"
                end
            when 2
            puts "Tu as fait un 2! Tu reste sur la marche où tu est. Tu est sur la marche numéro #{@@steps}"
            when 3
            puts "Tu as fait un 3! Tu reste sur la marche où tu est. Tu est sur la marche numéro #{@@steps}"
            when 4
            puts "Tu as fait un 4! Tu reste sur la marche où tu est. Tu est sur la marche numéro #{@@steps}"
            when 5
            puts "Tu as fait un 5! Tu monte d'une marche! Tu est maintenant sur la marche numéro #{@@steps + 1}"
            @@steps += 1
            when 6
            puts "Tu as fait un 6! Tu monte d'une marche! Tu est maintenant sur la marche numéro #{@@steps + 1}"
            @@steps += 1
            else 
            puts "Ouups! le dé a planté!"
            end
        else
            Game.generating_rng
        end
    end 
    
    def self.perform
        Game.generating_rng
        if @@steps < 10
            Game.perform
        else
            puts "Bienvenus au Paradis!"
            puts "Veux-tu toujours découvrir ce qui t'attends après la mort? (oui/non)"
            ans = gets.chomp
            if ans == "oui"
                puts "Comme promis voici ce qui t'attends après la mort :"
                10.times do |i|
                    puts "#{">"*i}"
                end
                puts ">>>>>>>>>>NIL"
            else
                puts "Il n'y as pas de honte à faire le lache comme dirait Davidi Kitaï! Bonne journée!"
            end
        end
    end
end

welcome
Game.perform