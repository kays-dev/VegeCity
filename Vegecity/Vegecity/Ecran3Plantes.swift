//
//  Ecran3Plantes.swift
//  Vegecity
//
//  Created by apprenant168 on 13/06/2026.
//

import SwiftUI

struct Ecran3Plantes: View {
    @State private var recherche = ""
    @State private var resultats: [Plante] = exemples
    @State private var typeSelected = "Type"
   // @State private var typeConcrets: [PlantType] = types
    
    var body: some View {
        VStack{
            VStack {
                VStack(alignment: .leading, spacing: 20) {
                    BarreDeRecherche(texte: "Lierre, Pinus, fruitiers...")
//                        .overlay(alignment: .trailing) {
//                            Picker("Type", selection: $typeSelected) { ForEach(types) { type in
//                                Text(type.nom)
//                            }} .pickerStyle(.menu)
//                                .background(.vcSearchbarBg)
//                                .clipShape(.circle)
//                            }
                    HStack() {
                            Picker("Type", selection: $typeSelected) { ForEach(types) { type in
                                Text(type.nom)
                                //Image(type.image)
                            }
                        }
                        .pickerStyle(.menu)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(.vcSearchbarBg)
                        .clipShape(.circle)
                        
                        ForEach(problematiques) { filtre in
                            Image(systemName: filtre.icone).font(.title)
                                .frame(maxWidth: .infinity, alignment: .center)
                                //.foregroundStyle(.accent)
                        }
                    }
                    .foregroundStyle(.vcSearchbarText)
                    
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Plante du jour")
                            .font(.title3).bold()
                            .foregroundStyle(.vcSearchbarText)
                        ScrollView(.horizontal, showsIndicators: true) {
                            HStack(spacing: 24) {
                                ForEach(exemples) { plantOfTheDay in
                                        PlantJour(plantJour: plantOfTheDay)
                                }
                            }
                        } .styleCarte()
                    }
                    Text("Propositions...")
                        .font(.title3).bold()
                        .foregroundStyle(.vcSearchbarText)
               
                   ForEach(resultats) { PlantCard(plante: $0) }
                }
            }
            
        }   .padding(.top, 40)
            .padding(.horizontal, 20)
            .padding(.bottom, 28)
        .stylePage(photo: "plantesCover", titrePage: "Choix d'espèces")
    }
}

#Preview {
    Ecran3Plantes()
}
