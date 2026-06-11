//
//  CardDetailView.swift
//  Vegecity
//
//  Created by Apprenant160 on 11/06/2026.
//

import SwiftUI

struct CardDetailView: View {
    
    let activites: [Activite].
    
    var body: some View {
        
        HStack() {
            Image(activite.image)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .cornerRadius(5)
                .padding()
            
            VStack(alignment: .leading, spacing: 0) {
                Text(activite.nom)
                    .font(.headline)
                Text(activite.description)
                    .font(.subheadline)
                Text(activite.inscription ? "inscription" : "libre d'accés")
                    .foregroundStyle(activite.inscription ? Color.red : Color.green)
                    .padding(.vertical, 5)
                    .font(.caption)
                
                HStack {
                    Text("nombre places : " + activite.nbrPlace.description)
                        .font(.caption)
                        .foregroundStyle(Color.orange)
                        .fontWeight(.bold)
                        .padding(.vertical, 20)
                        .padding(.horizontal, 0)
                        .frame(maxWidth: .infinity,maxHeight: 100, alignment: .topLeading)
                    
                    HStack {
                        // Image(systemName: "figure.and.child.holdinghands")
                        Image(systemName: "figure.roll")
                            .font(.title2)
                        // Image(systemName: "allergens.fill")
                    } .padding()
                }
            }
            .frame(maxWidth: .infinity,maxHeight: 100, alignment: .topLeading)
        }
        .border(Color.vcCardBorder)
        .background(.background.secondary)
        .clipShape(.rect(cornerRadius: 20))
        .padding(16)
        .shadow(color: .vcCardShadow, radius: 0280)
    }
    }


#Preview {
    CardDetailView(activite: [Activite(nom: "Arts et Métiers", cp: 75003, description: "Atelier d'initiation aux techniques de plantation de différente variétés de plantes", date: Date(), image: "arts_et_metiers", nbrPlace: 12, niveau: 2, accessibilite: false, inscription: false, option: Problematique.init(nom: "inondation", icone: "drop.circle"))])
}
