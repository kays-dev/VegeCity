//
//  Groupes.swift
//  Vegecity
//
//  Created by Apprenant174 on 07/06/2026.
//

import SwiftUI

struct EcranGroupes: View {
    @State private var rechercheGroupe : String = ""
    
    @State private var tousGroupes : [Groupe] = groupes
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24){
            
            HStack{
                BarreDeRecherche(saisie: $rechercheGroupe, texte: "Rechercher un groupe")
                
                BoutonGroupe(icone: "archivebox", foreground: .vcIcon, fillIcone: .vcIconBg)
            }
            
            LazyVStack(alignment: .leading, spacing: 16){
                ForEach($tousGroupes){ $groupe in
                    NavigationLink {
                        EcranDiscussion(groupe: $groupe, groupeMessages: $groupe.messages)
                    } label : {
                        CarteGroupes(image: groupe.activite.image, titre: groupe.activite.nom,
                                     arrondissement: getArrondissement(cp: groupe.activite.cp),
                                     membres: groupe.membres.map{"@"+$0.pseudo},
                                     dernierMessage: groupe.messages.last?.detail ?? "")
                    }
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
    EcranGroupes()
}
