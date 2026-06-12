//
//  Plantes.swift
//  Vegecity
//
//  Created by apprenant168 on 11/06/2026.
//

import SwiftUI
//Instances Description Plantes
let exemples = [
    Plante(nom: "Échinacée", type: "Graminées ornementales", details: "Fleurs orange-rouge à cœur brun bombé, accompagnée de Stipa ou Nassella (graminée fine).", favorites: true, image: "Échinacée"),
    Plante(nom: "Anisodontea", type: "Arbustes", details: "Arbuste à petites fleurs rose-mauve, feuilles dentées. Très utilisé dans les jardins urbains parisiens.", favorites: false, image: "Anisodontea"),
    Plante(nom: "Sisyrinchium", type: "Sisyrinchium striatum", details: "Petites fleurs crème-jaune sur tiges dressées, feuilles en éventail.", favorites: true, image: "Sisyrinchium"),
    Plante(nom: "Hémérocalle", type: "Hemerocallis fulva", details: "Le classique lis d'un jour orange, très robuste et utilisé en bordure urbaine.", favorites: true, image: "Hémérocalle"),
    Plante(nom: "Stipa", type: "Nassella tenuissima (Cheveux d'ange)", details: "Graminée ornementale très fine et soyeuse, très tendance dans les aménagements écologiques parisiens.", favorites: false, image: "Stipa"),
    Plante(nom: "Cinéraire maritime", type: "Vivaces herbacées", details: "Anciennement Senecio cineraria, feuillage argenté très découpé, utilisé comme plante de contraste.", favorites: false, image: "Cinéraire maritime"),
    Plante(nom: "Amarante ornementale", type: "Feuillages", details: "Feuilles pourpres-bronze très caractéristiques avec reflets métalliques.", favorites: false, image: "Amarante ornementale"),
    Plante(nom: "Ostéospermum", type: "Osteospermum ecklonis", details: "Marguerites blanches d'Afrique du Sud, très communes dans les massifs urbains.", favorites: false, image: "Ostéospermum")
]

struct PlantType: Identifiable, Hashable {
    let id = UUID()
    let nom: String
    let image: String
}

let types = [
    PlantType(nom: "Arbres",image: "tree.fill"),
    PlantType(nom: "Arbustes", image: "tree.circle.fill"),
    PlantType(nom: "Vivaces herbacées", image: "camera.macro.circle.fill"),
    PlantType(nom: "Graminées ornementales", image: "apple.meditate"),
    PlantType(nom: "Feuillages", image: "leaf.circle.fill"),
    PlantType(nom: "Fruitiers", image: "leaf.fill"),
    PlantType(nom: "Legumes", image: "carrot.fill")
]
