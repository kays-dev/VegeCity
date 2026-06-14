//
//  Activites.swift
//  Vegecity
//
//  Created by Apprenant174 on 07/06/2026.
//

import Foundation

//Instance d'activités
let activité1 = Activite(nom: "Potager des Oiseaux", cp: 75003, desc_lieu: "Jardin partagé", desc_activite: """
Ex-friche transformée en jardin partagé de 1 200 m² géré par l'association des Jardiniers du 3e depuis 2004. Parcelles pour les écoles, composteur, micro-jardin japonais, expositions artistiques.
""", date: Date(timeInterval: 7*24*60*60, since: .now), image: "defaultCover", nbrPlace: 8, niveau: 2, accessibilite: true, inscription: true, option: [])

let activite2 = Activite(nom: "Square Butte-aux-Cailles", cp: 75013, desc_lieu: "Square public", desc_activite: "", date: Date(timeInterval: 5*24*60*60, since: .now), image: "defaultCover", nbrPlace: 4, niveau: 3, accessibilite: false, inscription: true, option: [])

let activites: [Activite] = [
    Activite(nom: "Arts et Métiers", cp: 75003, desc_lieu: "Espace privé mis à disposition", desc_activite: "Atelier d'initiation aux techniques de plantation de différente variétés de plantes", date: Date(), image: "arts_et_metiers", nbrPlace: 12, niveau: 2, accessibilite: false, inscription: false, option: [jardinage]),
    Activite(nom: "Menilmontant", cp: 75012, desc_lieu: "espace aérien végétal", desc_activite: "Potager partagé municipal", date: Date(), image: "coulee_verte", nbrPlace: 9, niveau: 1, accessibilite: true, inscription: false, option: [inondations]),
    Activite(nom: "Butte aux Cailles", cp: 75013, desc_lieu: "Potager partagé municipal", desc_activite: "Découverte de la gestion d'un potager, de l'entretien et conseil pour débuter simplement chez soi.", date: Date(), image: "butte_aux_cailles", nbrPlace: 9, niveau: 1, accessibilite: true, inscription: false, option: [inondations]),
    Activite(nom: "Gambetta", cp: 75013, desc_lieu: "Jardinière publique", desc_activite: "Potager partagé municipal", date: Date(), image: "gambetta", nbrPlace: 9, niveau: 1, accessibilite: true, inscription: false, option: [jardinage])
]


func getArrondissement(cp : Int) -> String {
    switch cp {
    case 75001 :
        return "1er"
    case 75002 :
        return "2eme"
    case 75003 :
        return "3eme"
    case 75004 :
        return "4eme"
    case 75005 :
        return "5eme"
    case 75006 :
        return "6eme"
    case 75007 :
        return "7eme"
    case 75008 :
        return "8eme"
    case 75009 :
        return "9eme"
    case 75010 :
        return "10eme"
    case 75011 :
        return "11eme"
    case 75012 :
        return "12eme"
    case 75013 :
        return "13eme"
    case 75014 :
        return "14eme"
    case 75015 :
        return "15eme"
    case 75016 :
        return "16eme"
    case 75017 :
        return "17eme"
    case 75018 :
        return "18eme"
    case 75019 :
        return "19eme"
    case 75020 :
        return "20eme"
        
    default:
        return "Mauvais code postale"
    }
}
