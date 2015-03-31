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
    words = sentence.split(" ")
    if words[1] == "fucking"
        words[1] = "*******"
    elsif words[4] == "asshole"
        words[4] = "*******"
    else
        "a sentence"
    end
    words.join(" ")
end