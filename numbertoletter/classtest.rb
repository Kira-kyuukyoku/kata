require "minitest/autorun"
require "./test"

class NumberToLetterTest < MiniTest::Test
    def test_0_donne_zero
        assert_equal("zéro", number_to_letter(0))
    end
    def test_1_donne_un
        assert_equal("un", number_to_letter(1))
    end
    def test_2_donne_deux
        assert_equal("deux", number_to_letter(2))
    end
    def test_17_donne_dix_sept
        assert_equal("dix-sept", number_to_letter(17))
    end
    def test_18_donne_dix_huit
        assert_equal("dix-huit", number_to_letter(18))
    end
    def test_19_donne_dix_neuf
        assert_equal("dix-neuf", number_to_letter(19))
    end
    def test_23_donne_vingt_trois
        assert_equal("vingt-trois", number_to_letter(23))
    end
    def test_35_donne_trente_cinq
        assert_equal("trente-cinq", number_to_letter(35))
    end
end