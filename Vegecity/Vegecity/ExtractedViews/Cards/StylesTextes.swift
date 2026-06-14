//
//  GrandTitre.swift
//  Vegecity
//
//  Created by Apprenant174 on 13/06/2026.
//

import SwiftUI

//Titre de la carte
struct GrandTitre: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font((.custom("IosevkaCharonMono-Bold", size: 20, relativeTo: .title2)))
            .foregroundStyle(.vcBodyPrimary)
    }
}

extension View {
    func grandTitre()  -> some View {
        modifier(GrandTitre())
    }
}

//Sous titre de la carte
struct SousTitre: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font((.custom("IosevkaCharonMono-Regular", size: 17, relativeTo: .title3)))
            .foregroundStyle(.vcBodySecondary)
    }
}

extension View {
    func sousTitre()  -> some View {
        modifier(SousTitre())
    }
}

//Description de la carte
struct CarteDescription: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font((.custom("IosevkaCharonMono-Regular", size: 17, relativeTo: .callout)))
            .foregroundStyle(.vcBodyPrimary)
    }
}

extension View {
    func carteDescription()  -> some View {
        modifier(CarteDescription())
    }
}

//Légende de la carte
struct Legende: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font((.custom("IosevkaCharonMono-Regular", size: 17, relativeTo: .caption)))
            .foregroundStyle(.accent)
    }
}

extension View {
    func legende()  -> some View {
        modifier(Legende())
    }
}

//Description italique de la carte
struct CarteDescriptionItalique: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font((.custom("IosevkaCharonMono-Italic", size: 17, relativeTo: .caption)))
            .foregroundStyle(.vcBodySecondary)
    }
}

extension View {
    func carteDescriptionItalique()  -> some View {
        modifier(CarteDescriptionItalique())
    }
}

//Badge des catégories
struct CarteBadge: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font((.custom("IosevkaCharonMono-Regular", size: 12, relativeTo: .caption)))
            .foregroundStyle(.vcBodySecondary)
    }
}

extension View {
    func carteBadge()  -> some View {
        modifier(CarteBadge())
    }
}

//Bouton
struct BoutonFiltre: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font((.custom("IosevkaCharonMono-Medium", size: 17, relativeTo: .caption)))
            .foregroundStyle(.vcBodySecondary)
    }
}

extension View {
    func boutonFiltre()  -> some View {
        modifier(BoutonFiltre())
    }
}

struct StylesTextes: View {
    var body: some View {
        Text("Titre")
            .grandTitre()
        
        Text("Sous-titre")
            .sousTitre()
        
        Text("Description")
            .carteDescription()
        
        Text("Description italique")
            .carteDescriptionItalique()
        
        Text("Légende")
            .legende()
        
        Text("Badge")
            .carteBadge()
    }
}

#Preview {
    StylesTextes()
}
