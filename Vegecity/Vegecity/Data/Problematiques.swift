//
//  Problematiques.swift
//  Vegecity
//
//  Created by Apprenant174 on 07/06/2026.
//

import Foundation

//Instances du modèle Problematique
let biodiversite = Problematique(nom: "Biodiversité urbaine", icone: "ladybug.circle.fill", icone2: "ladybug")
let choixEspece = Problematique(nom: "Choix d’espèces", icone: "tree.circle.fill", icone2: "tree")
let jardinage = Problematique(nom: "Jardinage", icone: "apple.meditate.circle.fill", icone2: "apple.meditate")
let secheresse = Problematique(nom: "Sècheresse", icone: "sun.max.circle.fill", icone2: "sun.max")
let crues = Problematique(nom: "Crues", icone: "cloud.rain.circle.fill", icone2: "cloud.rain")
let inondations = Problematique(nom: "Inondations", icone: "drop.circle.fill", icone2: "drop")
let ilotsChaleur = Problematique(nom: "Îlots de chaleur", icone: "thermometer.sun.circle.fill", icone2: "drop")

let problematiques = [
    biodiversite,
    choixEspece,
    jardinage,
    secheresse,
    crues,
    inondations,
    ilotsChaleur
]
