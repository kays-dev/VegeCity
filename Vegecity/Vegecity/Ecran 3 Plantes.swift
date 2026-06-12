//
//  Ecran 3 Plantes.swift
//  Vegecity
//
//  Created by apprenant168 on 11/06/2026.
//

import SwiftUI

struct Ecran_3_Plantes: View {
    
    @State private var recherche = ""
    @State private var resultats: [Plante] = exemples
    @State private var typeSelected = "Type"
    
    var body: some View {
        VStack{
            
            VStack {
                
                VStack(alignment: .leading, spacing: 10) {
                    BarreDeRecherche(texte: "Lierre, Pinus, fruitiers...")
                    HStack() {
                            Picker("Type", selection: $typeSelected) { ForEach(types) { type in
                                Text(type.nom)
                                //Image(type.image)
                            } 
                        }
                        .pickerStyle(.menu)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(.accent)
                        .clipShape(.circle)
                        
                        ForEach(problematiques) { filtre in
                            Image(systemName: filtre.icone).font(.title)
                                .frame(maxWidth: .infinity, alignment: .center)
                                //.foregroundStyle(.accent)
                                
                        }
                    }
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
    Ecran_3_Plantes()
}
