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
    let desc_lieu: String
    let desc_activite: String // description lieu : potager partagé
    let date: Date //activité  date, heure? de l'activité
    let image: String // image de l'activité
    let nbrPlace: Int // nombre de place max
    let niveau: Int //1, 2 ou 3
    let accessibilite: Bool
    let inscription: Bool

    let option: [Problematique]

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

struct Groupe: Identifiable, Hashable {
    let id = UUID()
    let activite: Activite
    let membres: [Membre]
    let messagesRecus: [String]
    let messagesEnvoyes: [String]
}
