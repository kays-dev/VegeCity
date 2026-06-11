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

let activites: [Activite] = [
    Activite(nom: "Arts et Métiers", cp: 75003, description: "Atelier d'initiation aux techniques de plantation de différente variétés de plantes", date: Date(), image: "arts_et_metiers", nbrPlace: 12, niveau: 2, accessibilite: false, inscription: false, option: [Problematique.init(nom: "inondation", icone: "drop.circle")]),
    Activite(nom: "Montgallet", cp: 75012, description: "Potager partagé municipal", date: Date(), image: "montgallet", nbrPlace: 9, niveau: 1, accessibilite: true, inscription: false, option: [Problematique.init(nom: "jardinage", icone: "leaf.fill")])
]
