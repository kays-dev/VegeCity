//
//  CarteGroupes.swift
//  Vegecity
//
//  Created by Apprenant174 on 07/06/2026.
//

import SwiftUI

struct CarteGroupes: View {
    var groupe : Groupe
    
    var body: some View {
        HStack(alignment: .top){
            Image(groupe.activite.image)
                .resizable()
                .scaledToFill()
                .overlay{
                    Rectangle().fill(.vcGreenFilter)
                    Rectangle().fill(.vcLighterFilter)
                }
                .frame(minWidth: 0,
                       maxWidth: 100,
                       minHeight: 0,
                       maxHeight: 100
                )
                .aspectRatio(1/1 , contentMode: .fit) //permet à l'image de respecter un ratio en fonction de l'espace et de la taille de l'écran
                .clipShape(.rect(cornerRadius: 12))
            
            VStack(alignment: .leading){
                Text(groupe.activite.nom)
                    .grandTitre()
                    .multilineTextAlignment(.leading)
                
                HStack(spacing: 20){
                    HStack(spacing: 2){
                        Image(systemName: "map").symbolVariant(.circle.fill)
                        Text(getArrondissement(cp:groupe.activite.cp))
                    }
                    
                    HStack(spacing: 2){
                        Image(systemName: "person.2").symbolVariant(.circle.fill)
                        Text(groupe.membres.map{"@"+$0.pseudo}.joined(separator: ", "))
                            .lineLimit(1)
                    }
                }
                .sousTitre()
                
                Spacer()
                
                Text(groupe.messages.last?.detail ?? "")
                    .carteDescriptionItalique()
                    .lineLimit(1)
                    .padding(.trailing, 48)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .frame(height: 100)
        .styleCarte()
    }
}

#Preview {
    CarteGroupes(groupe: groupe1)
}
