//
//  Model.swift
//  Vegecity
//
//  Created by apprenant168 on 05/06/2026.
//

import Foundation
import CoreTransferable

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
    let icone2: String
    
    nonisolated static func == (lhs: Problematique, rhs: Problematique) -> Bool {
        lhs.id == rhs.id
    }

    nonisolated func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

struct Groupe: Identifiable, Hashable {
    let id = UUID()
    
    let activite: Activite
    let membres: [Membre]
    var messages: [Message]
    
    var archive: Bool = false
}

struct Message: Identifiable, Hashable {
    let id = UUID()
    
    let membre : Membre
    let detail : String
    let dateEnvoi: DateComponents
}

struct Information: Identifiable, Hashable, Transferable {
    let id = UUID()
    
    let titre: String
    let source: String
    
    let type: TypeInformation
    let problematiques: [Problematique]
    
    let resume: String
    let description: String
    
    let link: String
    
    let transferSubject: String = "J'ai trouvé cette ressource sympa !"
    let transferMessage: String = "-S'impliquer maintenant, c'est vivre dans une ville plus habitable demain 🌱-"
    let transferImage: String = "leaf.fill"
    
    
    static var transferRepresentation: some TransferRepresentation {
        ProxyRepresentation(exporting: \.titre)
        ProxyRepresentation(exporting: \.source)
        ProxyRepresentation(exporting: \.resume)
        ProxyRepresentation(exporting: \.transferImage)
    }
    nonisolated static func == (lhs: Information, rhs: Information) -> Bool {
        lhs.id == rhs.id
    }

    nonisolated func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

}

struct TypeInformation: Identifiable, Hashable {
    let id = UUID()
    
    let nom: String
    let icone: String
    
    nonisolated static func == (lhs: TypeInformation, rhs: TypeInformation) -> Bool {
        lhs.id == rhs.id
    }

    nonisolated func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
