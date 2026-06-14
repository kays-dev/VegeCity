//
//  ActiviteView.swift
//  Vegecity
//
//  Created by Apprenant160 on 11/06/2026.
//

import SwiftUI

struct ActiviteView: View {
    
    let activite: Activite
    let problematique: [Problematique] = problematiques
    let membre: [Membre] = membres
    
    var body: some View {
        
        ZStack {
            VStack(spacing: 18) {
                Text(activite.nom)
                    .font(.largeTitle)
                HStack {
                    Text(activite.desc_lieu)
                        .font(.headline)
                    Image(systemName: "figure.roll.circle.fill")
                        .font(.title2)
                    Image(systemName: "1.circle.fill")
                        .font(.title2)
                }
                
                Image(activite.image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(20)
                
                Text(activite.nbrPlace > 0 ? "Places restante : \(activite.nbrPlace)" : "Complet")
                    .foregroundStyle(activite.nbrPlace > 0 ? .vcCardIcon : Color.red)
                    .font(.title2)
                
                ScrollView(.horizontal) {
                    HStack(spacing: 15) {
                        ForEach(membres) { membre in
                            MemberView()
                        }
                    }
                }
                .scrollIndicators(.hidden)
                
                HStack(alignment: .center, spacing: 8) {
                    Text("Prochaine date :")
                        .font(.title3)
                        .foregroundStyle(.accent)
                    Text(activite.date, format: .dateTime.day().month().year().hour().minute())
                }
                Text(activite.desc_activite)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity)
                
                
                VStack(alignment: .center, spacing: 0) {
                    ForEach(activite.option) { problematique in
                        HStack(alignment: .center, spacing: 5) {
                            Image(systemName: problematique.icone)
                            Text(problematique.nom)
                                .padding(4)
                        }
                        .foregroundStyle(.vcBodySecondary)
                        .background(Capsule().fill(.vcSearchbarBg).frame(width: 160, height: 30))
                    }.padding(.top, 12)
                }
                
                Spacer()
                HStack {
                    Button {
                        
                    } label: {
                        Text("Inscription")
                            .frame(width: 175, height: 30)
                    }
                    .foregroundStyle(.black)
                    .fontWeight(.semibold)
                    .buttonStyle(.borderedProminent)
                    .tint(.accent).opacity(0.7)
                    .disabled(activite.nbrPlace <= 0)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .padding()
            .background(.vcPrimary)
        }
    }
}



#Preview {
    ActiviteView(activite: Activite(nom: "Arts et Métiers", cp: 75003, desc_lieu: "Espace privé mis à disposition", desc_activite: "Atelier d'initiation aux techniques de plantation de différente variétés de plantes.", date: Date(), image: "arts_et_metiers", nbrPlace: 1, niveau: 2, accessibilite: true, inscription: false, option: [inondations,jardinage,crues]))
}
