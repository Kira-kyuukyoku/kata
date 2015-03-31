class Rot13Converter
  def encrypt(text)
    new_text = ''
    text.each_char do |letter|
      new_letter = letter
      13.times { new_letter = new_letter.next[-1] } if ('A'..'z').include? letter
      new_text << new_letter
    end
    new_text
  end
end