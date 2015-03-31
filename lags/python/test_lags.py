import unittest
from lags import *

class LagsTest(unittest.TestCase):

    def test_sans_demande_profit_0(self):
        demandes = []
        self.assertEquals(lags(demandes), 0)

    def test_prix_d_une_demande(self):
        demandes = [Demande(1,4,9)]
        self.assertEquals(lags(demandes), 9)
        demandes = [Demande(1,4,7)]
        self.assertEquals(lags(demandes), 7)

    def test_prix_de_deux_demandes(self):
        demandes = [Demande(0,4,7),Demande(1,4,9)]
        self.assertEquals(lags(demandes), 9)

    def test_deux_demandes_compatibles(self):
        demandes = [Demande(0,2,1),Demande(2,4,1)]
        self.assertEquals(lags(demandes), 2)

    def test_trois_demandes_deux_compatibles_plus_interessantes(self):
        demande = Demande(0, 3, 7)
        demande_incompatible = Demande(2, 3, 10)
        autre_demande = Demande(4, 1, 4)
        demandes = [demande, demande_incompatible, autre_demande]
        self.assertEquals(lags(demandes), 11)


class DemandeTest(unittest.TestCase):
    def test_une_demande_a_un_prix_une_duree_et_un_depart(self):
        demande = Demande(0,2,4)
        self.assertEquals(demande.depart, 0)
        self.assertEquals(demande.duree, 2)
        self.assertEquals(demande.prix, 4)

    def test_une_demande_a_une_heure_d_arrive(self):
        demande = Demande(0,2,4)
        self.assertEquals(demande.arrive, 2)
        demande = Demande(1,3,4)
        self.assertEquals(demande.arrive, 4)

    def test_demande_compatibles(self):
        demande = Demande(0,2,3)
        autre_demande = Demande(2,3,4)
        self.assertEquals(demande.compatible(autre_demande), True)

    def test_demande_incompatibles(self):
        demande = Demande(1,2,3)
        autre_demande = Demande(2,3,4)
        self.assertEquals(demande.compatible(autre_demande), False)


if __name__ == '__main__':
    unittest.main()