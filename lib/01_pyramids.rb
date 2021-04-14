def wtf_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    puts "Choisi un nombre entre 1 et 25"
    print ">"
    number = gets.chomp.to_i
    hashtag = "#"
    space = " "

    if number>=1 && number <=25 && number % 2 != 0
        for i in (1..(number+1)/2) 
            puts "#{space*((number+1)/2-i)}#{hashtag*i}#{hashtag*(i-1)}"
        end
        for j in (1..number/2)
            puts "#{space*j}#{hashtag*(number/2-j)}#{hashtag*(number/2-(j-1))}"
        end
    else
        puts "Fait un effort, gros!"
    end
end

wtf_pyramid