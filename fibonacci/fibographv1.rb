def fibo(chiffre)

    if chiffre == 0
        return 1
    elsif chiffre == 1
        return 1
    end

    a = 1
    b = 1
    c = 2
    i = 2

    while i < chiffre do
        a = b
        b = c
        c = a + b
        i = i +1
    end

    j = 1
    result = "|"
    while j < c do
        result = result + "|"
        j = j +1
    end

    return result
end

print "Entrez un chiffre: "

# Converti le String en entier si besoin
# Saisie est égal à 0 si rien n'est entrer par l'utilisateur
saisie = gets.chomp.to_i

if Integer(saisie) && saisie <= 50
    puts fibo(saisie)
else
    print "Vérifier votre saisie, il ne s'agit peu être pas d'un nombre entier, il doit également être inférieur ou égale à 50."
end