def fibo(chiffre)

    a = 1
    b = 1
    c = 0
    i = 0

    j = 0
    result = []
    string = "|"

    while i <= chiffre do
        a = b
        b = c
        c = a + b

            result << string * c

        i += 1
    end

    result
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