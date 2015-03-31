def number_to_letter(number)
    unite = ["zéro", "un", "deux", "trois", "quatre", "cinq", "six", "sept", "huit", "neuf", "dix", "onze", "douze", "treize", "quatorze", "quinze", "seize", "vingt", "trente"]

    if number >= 17 && number <= 19
        result?(unite, 10, number, 10)
    elsif number >= 20 && number <= 29
        result?(unite, 17, number, 20)
    elsif number >= 30 && number <= 39
        result?(unite, 18, number, 30)
    else
        return unite[number]
    end

end


def result?(unite, chiffre, number, less)
    return unite[chiffre] + "-" + unite[number - less]
end