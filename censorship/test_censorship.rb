require 'minitest/autorun'

class TestCensorship < MiniTest::Unit::TestCase

    def test_no_dirty_word_in_sentence
        sentence = "a sentence"
        assert_equal("a sentence", censor(sentence))
    end

    def test_one_dirty_word_in_sentence
        sentence = "a fucking sentence"
        assert_equal("a ******* sentence", censor(sentence))
    end

    def test_another_dirty_word
        sentence = "my sentence is an asshole"
        assert_equal("my sentence is an *******", censor(sentence))
    end
end

def censor(sentence)
    # BlackWords
    tabWords    = ["fucking", "asshole"]

    # Découpe et compte le nombre de mots
    words       = sentence.split(" ")
    #nbWords     = words.length

    #i = 0
    #while i < nbWords do
    #    if tabWords.include?(words[i])
    #        nbChar = words[i].length
    #        words[i] = "*" * nbChar
    #    end

    #    i += 1
    #end
    # words.join(" ")

    x = []
    words.each do |word|
        if tabWords.include?(word)
            nbChar = word.length
            x << "*" * nbChar
        else
            x << word
        end
    end

    x.join(" ")
end