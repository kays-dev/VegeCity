//
//  Groupes.swift
//  Vegecity
//
//  Created by Apprenant174 on 07/06/2026.
//

import SwiftUI

struct EcranGroupes: View {
    var listeMembres : String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 32){
            VStack(alignment: .leading, spacing: 16){
                ForEach(groupes){ groupe in
                    
                    CarteGroupes(image: groupe.activite.image, titre: groupe.activite.nom,
                                 arrondissement: getArrondissement(cp: groupe.activite.cp),
                                 membres: groupe.membres.map{"@"+$0.pseudo},
                                 dernierMessage: groupe.messagesRecus.last ?? "")
                }
            }
            
        }
        .padding(.top, 40)
        .padding(.horizontal, 20)
        .padding(.bottom, 28)
        .stylePage(photo: "groupCover", titrePage: "Groupes de discussion")
        
    }
}

#Preview {
    EcranGroupes(listeMembres: "groupe1.membres.ma")
}
