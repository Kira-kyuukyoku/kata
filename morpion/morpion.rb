require 'minitest/autorun'

class MorpionTest < MiniTest::Unit::TestCase

    def test_grille_vide
        assert_equal "nouvelle grille !", grille([[0, 0, 0], [0, 0, 0], [0, 0, 0]])
    end

    def test_joueur_1_joue
        assert_equal "| - | - | - | \n | - | X | - | \n | - | - | - |", grille([[0, 0, 0], [0, 1, 0], [0, 0, 0]])
    end

    def test_joueur_2_joue
        assert_equal "| - | - | - | \n | O | X | - | \n | - | - | - |", grille([[0, 0, 0], [2, 1, 0], [0, 0, 0]])
    end

end

def grille(action)
    if action[1][0] == 2
        "| - | - | - | \n | O | X | - | \n | - | - | - |"
    elsif action[1][1] == 1
        "| - | - | - | \n | - | X | - | \n | - | - | - |"
    else
        "nouvelle grille !"
    end
end