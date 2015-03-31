def lags(demandes):
    gainmax = 0
    j = 0

    for i in range(len(demandes)):
        demande = demandes[i]

        while j < len(demandes) - 1:
            demande_suivante = demandes[j + 1]
            if demande.compatible(demande_suivante):
                gainmax = demande.prix + demande_suivante.prix
            j = j + 1

        # if i < len(demandes) - 1:
        #     demande_suivante = demandes[i + 1]
        #     if demande.compatible(demande_suivante):
        #         gainmax = demande.prix + demande_suivante.prix

        if demande.prix > gainmax:
            gainmax = demande.prix

    return gainmax

class Demande:
    def __init__(self, depart, duree, prix):
        self.depart = depart
        self.duree = duree
        self.prix = prix
        self.arrive = depart + duree

    def compatible(self, autre_demande):
        return self.arrive <= autre_demande.depart