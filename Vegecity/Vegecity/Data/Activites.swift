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
    Activite(nom: "Arts et Métiers", cp: 75003, desc_lieu: "Espace privé mis à disposition", desc_activite: "Atelier d'initiation aux techniques de plantation de différente variétés de plantes", date: Date(), image: "arts_et_metiers", nbrPlace: 12, niveau: 2, accessibilite: false, inscription: false, option: [Problematique.init(nom: "inondation", icone: "drop.circle")]),
    Activite(nom: "Menilmontant", cp: 75012, desc_lieu: "espace aérien végétal", desc_activite: "Potager partagé municipal", date: Date(), image: "coulee_verte", nbrPlace: 9, niveau: 1, accessibilite: true, inscription: false, option: [Problematique.init(nom: "jardinage", icone: "leaf.fill")]),
    Activite(nom: "Butte aux Cailles", cp: 75013, desc_lieu: "Potager partagé municipal", desc_activite: "Découverte de la gestion d'un potager, de l'entretien et conseil pour débuter simplement chez soi.", date: Date(), image: "butte_aux_cailles", nbrPlace: 9, niveau: 1, accessibilite: true, inscription: false, option: [Problematique.init(nom: "jardinage", icone: "leaf.fill")]),
    Activite(nom: "Gambetta", cp: 75013, desc_lieu: "Jardinière publique", desc_activite: "Potager partagé municipal", date: Date(), image: "gambetta", nbrPlace: 9, niveau: 1, accessibilite: true, inscription: false, option: [Problematique.init(nom: "jardinage", icone: "leaf.fill")])
]
