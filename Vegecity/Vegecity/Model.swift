//
//  Model.swift
//  Vegecity
//
//  Created by apprenant168 on 05/06/2026.
//

import Foundation

struct Plante: Identifiable, Hashable {
    let id = UUID()
    let nom: String
    let type: String
    let details : String
    var favorites : Bool
    var image: String
}

struct Activite: Identifiable, Hashable {
    let id = UUID()
    let nom: String // nom du lieu
    let cp: Int // code postale pour definir les arrondissement
    let description: String // description lieu : potager partagé
    let date: Date //activité  date, heure? de l'activité
    let image: String // image de l'activité
    let nbrPlace: Int // nombre de place max
    let niveau: Int //1, 2 ou 3
    let accessibilite: Bool
    let inscription: Bool
    let option: Problematique
    
    static let activites: [Activite] = [
        Activite(nom: "Arts et Métiers", cp: 75003, description: "Atelier d'initiation aux techniques de plantation de différente variétés de plantes", date: Date(), image: "arts_et_metiers", nbrPlace: 12, niveau: 2, accessibilite: false, inscription: false, option: Problematique.init(nom: "inondation", icone: "drop.circle")),
        Activite(nom: "Montgallet", cp: 75012, description: "Potager partagé municipal", date: Date(), image: "montgallet", nbrPlace: 9, niveau: 1, accessibilite: true, inscription: false, option: Problematique.init(nom: "jardinage", icone: "leaf.fill"))
    ]
}



struct Membre: Identifiable, Hashable {
    let id = UUID()
    let pseudo: String
    let image: String
    let description: String
}

struct Problematique: Identifiable, Hashable  {
    let id = UUID()
    let nom: String
    let icone: String
}


