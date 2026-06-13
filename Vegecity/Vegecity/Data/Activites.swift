//
//  Activites.swift
//  Vegecity
//
//  Created by Apprenant174 on 07/06/2026.
//

import Foundation

//Instance d'activités
let activité1 = Activite(nom: "Potager des Oiseaux", cp: 75003, description: """
Ex-friche transformée en jardin partagé de 1 200 m² géré par l'association des Jardiniers du 3e depuis 2004. Parcelles pour les écoles, composteur, micro-jardin japonais, expositions artistiques.
""", date: Date(timeInterval: 7*24*60*60, since: .now), image: "defaultCover", nbrPlace: 8, niveau: 2, accessibilite: true, inscription: true, option: [])

let activite2 = Activite(nom: "Square Butte-aux-Cailles", cp: 75013, description: "", date: Date(timeInterval: 5*24*60*60, since: .now), image: "defaultCover", nbrPlace: 4, niveau: 3, accessibilite: false, inscription: true, option: [])

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
