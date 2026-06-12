//
//  ActiviteDetailView.swift
//  Vegecity
//
//  Created by Apprenant160 on 12/06/2026.
//

import SwiftUI

struct ActiviteDetailView1: View {
    
    let activite: Activite
    let problematique: [Problematique] = problematiques
    
    var body: some View {
        
        ZStack {
            VStack(spacing: 18) {
                Text(activite.nom)
                    .font(.largeTitle)
                Text(activite.desc_lieu)
                    .font(.headline)
                Image(activite.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 325, height: 200)
                
                Text(activite.nbrPlace > 0 ? "Places restante : \(activite.nbrPlace)" : "Complet")
                    .foregroundStyle(activite.nbrPlace > 0 ? .vcCardIcon : .accent)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                HStack {
                    ForEach(0..<7) { index in
                        MemberView()
                    }
                }
                
                VStack(alignment: .center, spacing: 16) {
                    Text("Prochaine date : ")
                        .font(.title2)
                        .foregroundStyle(.accent)
                        .fontWeight(.semibold)
                    Text(activite.date, format: .dateTime.day().month().year().hour().minute())
                    
                    Text(activite.desc_activite)
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: .infinity)
                    //.padding(.horizontal, 90)
                }
                
                VStack(alignment: .center, spacing: 0) {
                    ForEach(activite.option) { problematique in
                        HStack(alignment: .center, spacing: 5) {
                            Image(systemName: problematique.icone)
                            Text(problematique.nom)
                        }
                    }.padding(.top, 12)
                }
                
                Spacer()
                Button {
                } label: {
                    Text("Inscription")
                        .foregroundStyle(Color.white)
                        .fontWeight(.bold)
                        .background(Capsule().frame(width: 140, height: 44))
                }.disabled(activite.nbrPlace <= 0)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .padding()
            .background(.vcPrimary)
        }
    }
}

struct ActiviteDetailView2: View {
    
    let activite: Activite
    let problematique: [Problematique] = problematiques
    
    var body: some View {
        
        ZStack {
            VStack(spacing: 18) {
                Text(activite.nom)
                    .font(.largeTitle)
                Text(activite.desc_lieu)
                    .font(.headline)
                Image(activite.image)
                    .resizable()
                    .scaledToFit()
                
                Text(activite.nbrPlace > 0 ? "Places restante : \(activite.nbrPlace)" : "Complet")
                    .foregroundStyle(activite.nbrPlace > 0 ? .vcCardIcon : Color.red)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                HStack {
                    ForEach(0..<6) { index in
                        MemberView()
                    }
                }
                
                VStack(alignment: .center, spacing: 16) {
                    Text("Prochaine date : ")
                        .font(.title2)
                        .foregroundStyle(.accent)
                        .fontWeight(.semibold)
                    Text(activite.date, format: .dateTime.day().month().year().hour().minute())
                    
                    Text(activite.desc_activite)
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: .infinity)
                }
                
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
                    }.disabled(activite.nbrPlace <= 0)
                        .foregroundStyle(Color.black)
                        .fontWeight(.semibold)
                        .background(Capsule().fill(.accent).opacity(0.7).frame(width: 230, height: 44))
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .padding()
            .background(.vcPrimary)
        }
    }
}


#Preview {
    ActiviteDetailView1(activite: Activite(nom: "Arts et Métiers", cp: 75003, desc_lieu: "Espace privé mis à disposition", desc_activite: "Atelier d'initiation aux techniques de plantation de différente variétés de plantes.", date: Date(), image: "arts_et_metiers", nbrPlace: 12, niveau: 2, accessibilite: false, inscription: false, option: [Problematique(nom: "Îlots de chaleur", icone: "thermometer.sun.circle.fill"),Problematique(nom: "Inondations", icone: "drop.circle.fill"), Problematique(nom: "Jardinage", icone: "apple.meditate.circle.fill")])
    )
}


#Preview {
    ActiviteDetailView2(activite: Activite(nom: "Arts et Métiers", cp: 75003, desc_lieu: "Espace privé mis à disposition", desc_activite: "Atelier d'initiation aux techniques de plantation de différente variétés de plantes.", date: Date(), image: "arts_et_metiers", nbrPlace: 0, niveau: 2, accessibilite: false, inscription: false, option: [Problematique(nom: "Îlots de chaleur", icone: "thermometer.sun.circle.fill"),Problematique(nom: "Inondations", icone: "drop.circle.fill"), Problematique(nom: "Jardinage", icone: "apple.meditate.circle.fill")])
    )
}
