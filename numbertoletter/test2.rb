def number_to_letter(number)

    unite = ["zero", "un", "deux", "trois", "quatre", "cinq", "six", "sept", "huit", "neuf", "dix", "onze", "douze", "treize", "quatorze", "quinze", "seize"]
    dizaine = ["zero", "dix", "vingt", "trente", "quarante", "cinquante", "soixante"]

    if number%10 == 0 return dizaine[number/10]

    elsif number >= 17 return dizaine[number/10] + "-" + unite[number % 10]
    else
        return unite[number]
    end

end