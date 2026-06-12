//
//  ActiviteDetailView.swift
//  Vegecity
//
//  Created by Apprenant160 on 12/06/2026.
//

import SwiftUI

struct ActiviteDetailView: View {
    
    let activite: Activite
    let problematique: [Problematique] = problematiques
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 16) {
            Text(activite.nom)
                .font(.largeTitle)
                .padding(8)
            Text(activite.desc_lieu)
                .font(.headline)
            Image(activite.image)
                .resizable()
                .scaledToFit()
                .frame(width: 350, height: 200)
            ForEach(activite.option) { problematique in
                VStack(alignment: .leading) {
                    HStack(alignment: .center, spacing: 5) {
                        Image(systemName: problematique.icone)
                        Text(problematique.nom)
                        Spacer()
                    }
                    .padding(.leading, 35)
                    .clipShape(.capsule)
                    
                }
            }
        }
        .padding(.horizontal)
        .stylePage(photo: "gambetta", titrePage: "Activité")
    }
}


#Preview {
    ActiviteDetailView(activite: Activite(nom: "Arts et Métiers", cp: 75003, desc_lieu: "Espace privé mis à disposition", desc_activite: "Atelier d'initiation aux techniques de plantation de différente variétés de plantes", date: Date(), image: "arts_et_metiers", nbrPlace: 12, niveau: 2, accessibilite: false, inscription: false, option: problematiques ))
}
