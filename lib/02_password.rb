def sign_up
    puts "Rentre ton Mot de Passe:"
    print "> "
    password=gets.chomp
    return password
end

def login
    password=sign_up
    puts "Mot de passe?"
    print "> "
    password_input=gets.chomp
    while password_input!=password
        puts "Fais un effort, gros!"
        print "Ressaye > "
        password_input=gets.chomp
    end
        welcome_screen
end

def welcome_screen
    puts "Bienvenus dans la matrice!"
end

def perform
    login
end

perform