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
    
    var body: some View {
        
        VStack {
            
                VStack(alignment: .leading, spacing: 10) {
                TextField("Rechercher une plante", text: $recherche)
                    .textFieldStyle(.roundedBorder)
                
            }
            
            ForEach(resultats) { PlantCard(plante: $0) }
            
                HStack {
                //Picker
            }
            
            //Spacer()
           // Divider()
            
        }
        .stylePage(photo: "plantesCover", titrePage: "Choix d'espèces")
    }
}

#Preview {
    Ecran_3_Plantes()
}
