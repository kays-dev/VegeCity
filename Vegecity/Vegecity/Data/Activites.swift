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
