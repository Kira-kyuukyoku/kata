require "minitest/autorun"

class WordchainTest < MiniTest::Unit::TestCase

    def test_without_dictionary_no_chain
        chain = ChainFinder.new([])
        assert_equal [], chain.find('cat', 'dog')
    end

    def test_with_one_word
        chain = ChainFinder.new(['cat'])
        assert_equal ['cat'], chain.find('cat', 'cat')
    end

    def test_with_two_words
        chain = ChainFinder.new(['cat', 'cot'])
        assert_equal ['cat'], chain.find('cat', 'cat')
    end

    def test_chain_of_two_words
        chain = ChainFinder.new(['cat', 'cot'])
        assert_equal ['cat', 'cot'], chain.find('cat', 'cot')
    end

    def test_chain_of_three_words
        chain = ChainFinder.new(['cat', 'cot', 'cog', 'dog'])
        assert_equal ['cat', 'cot', 'cog'], chain.find('cat', 'cog')
    end

    def test_chain_of_four_words
        chain = ChainFinder.new(['cat', 'cot', 'cog', 'dog'])
        assert_equal ['cat', 'cot', 'cog', 'dog'], chain.find('cat', 'dog')
    end

    def test_chain_of_six_words
        chain = ChainFinder.new(['cat', 'cot', 'cog', 'dog', 'dig', 'big'])
        assert_equal ['cat', 'cot', 'cog', 'dog', 'dig', 'big'], chain.find('cat', 'big')
    end

    def test_just_one_letter_diff
        chain = ChainFinder.new(['cat', 'cot', 'cog', 'dog'])

        # Note: en Ruby, une fonction retournent true ou false prend un ? à la fin
        assert_equal false, chain.one_letter_diff?('cat', 'cat')
        assert_equal true, chain.one_letter_diff?('cat', 'cot')
    end
end

class ChainFinder
    def initialize(dictionary)
        @dict = dictionary
    end

    def one_letter_diff?(first_word, second_word)
        (first_word.chars - second_word.chars).length == 1
    end

    def find(start_word, end_word)
        chain           = []
        working_dict    = @dict.dup # je duplique le tab afin de conserver l'original
        nb_working_dict = working_dict.length # compte le nombre d'élément du tableau
        first           = true
        i = 0

        if working_dict.include?(start_word)
            chain << start_word  # ajoute dans le tableau
        end

        if start_word != end_word && nb_working_dict > 1
            begin
                prev_word = first ? start_word : working_dict[i-1]
                    if (prev_word.chars - working_dict[i].chars).length == 1
                        chain << working_dict[i]
                    end

                first   = false
                i       = i +1
            end until working_dict[i] == end_word # tant le mot en cours n'est pas égale au mot de fin on continu

            if working_dict.include?(end_word)
                chain << end_word
            end
        end

        chain.uniq
    end

end