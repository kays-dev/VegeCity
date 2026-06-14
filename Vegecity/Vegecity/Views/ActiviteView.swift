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
            VStack(spacing: 16) {
                HStack {
                    Text(activite.desc_lieu)

                    Image(systemName: "figure.roll.circle.fill")
                        .font(.title2)
                    Image(systemName: "1.circle.fill")
                        .font(.title2)
                }
                .grandTitre()
                
                Image(activite.image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(20)
                
                Text(activite.nbrPlace > 0 ? "Places restante : \(activite.nbrPlace)" : "Complet")
                    .foregroundStyle(activite.nbrPlace > 0 ? .vcCardIcon : Color.red)
                    .carteDescription()
                
                ScrollView(.horizontal) {
                    HStack(spacing: 15) {
                        ForEach(membres) { membre in
                            MemberView()
                        }
                    }
                }
                .scrollIndicators(.hidden)
                
                HStack(alignment: .center, spacing: 4) {
                    Text("Prochaine date :")
                        .foregroundStyle(.accent)
                    Text(activite.date, format: .dateTime.day().month().year().hour().minute())
                        .foregroundStyle(.vcBodyPrimary)
                }
                .carteDescriptionItalique()
                .padding(.bottom)
                
                Text(activite.desc_activite)
                    .multilineTextAlignment(.center)
                    .carteDescription()

                Spacer()
                
                VStack(spacing: 16) {
                    ForEach(activite.option) { problematique in
                        HStack(spacing: 8) {
                            Image(systemName: problematique.icone)
                            Text(problematique.nom)
                        }
                        .foregroundStyle(.vcBodySecondary)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 4)
                        .background(Capsule().fill(.vcSearchbarBg))
                        .legende()
                    }
                }
                
                Spacer()
                
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
            .frame(maxWidth: .infinity, alignment: .top)
            .padding(.horizontal)
            .background(.vcPrimary)
        }        .navigationTitle("\(activite.nom)")
            .toolbar(.hidden, for:  .tabBar)
    }
}



#Preview {
    ActiviteView(activite: Activite(nom: "Arts et Métiers", cp: 75003, desc_lieu: "Espace privé mis à disposition", desc_activite: "Atelier d'initiation aux techniques de plantation de différente variétés de plantes.", date: Date(), image: "arts_et_metiers", nbrPlace: 1, niveau: 2, accessibilite: true, inscription: false, option: [ilotsChaleur, inondations, jardinage]))
}
