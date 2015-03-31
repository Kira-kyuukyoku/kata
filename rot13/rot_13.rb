class Rot13Converter

  def encrypt(word)
    answer = ""
    dict = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    wordsplit = word.split('')
    if word != nil
      wordsplit.each do |letter|
        if letter.to_i != 0 || letter == " " || letter == "!"
          answer << letter
        else dict.each_with_index do |dictletter,index|
          if letter == dictletter
            if dict[index+13] == nil
              answer << dict[-dict.length+index+13]
            else
              answer << dict[index+13]
            end
          elsif letter == dictletter.capitalize
            if dict[index+13] == nil
              answer << dict[-dict.length+index+13].capitalize
            else
              answer << dict[index+13].capitalize
            end
          end
        end
      end
    end
    return answer
  end
end
end