//
//  CarteGroupes.swift
//  Vegecity
//
//  Created by Apprenant174 on 07/06/2026.
//

import SwiftUI

struct CarteGroupes: View {
    var image : String
    var titre : String
    var arrondissement : String
    var membres : [String]
    var dernierMessage : String
    
    var body: some View {
        HStack(alignment: .top){
            Image(image)
                .resizable()
                .scaledToFill()
                .overlay{
                    Rectangle().fill(.vcGreenFilter)
                    Rectangle().fill(.vcLighterFilter)
                }
                .frame(minWidth: 0,
                       maxWidth: .infinity,
                       minHeight: 0,
                       maxHeight: .infinity
                )
                .aspectRatio(1/1 , contentMode: .fit) //permet à l'image de respecter un ratio en fonction de l'espace et de la taille de l'écran
                .clipShape(.rect(cornerRadius: 12))
            
            VStack(alignment: .leading){
                Text(titre)
                    .font((.custom("IosevkaCharonMono-Bold", size: 20, relativeTo: .title2)))
                    .foregroundStyle(.vcBodyPrimary)
                
                HStack(spacing: 12){
                    HStack(spacing: 2){
                        Image(systemName: "map").symbolVariant(.fill)
                        Text(arrondissement)
                    }
                    
                    HStack(spacing: 2){
                        Image(systemName: "person.2").symbolVariant(.fill)
                        Text(membres.joined(separator: ", "))
                            .lineLimit(1)
                    }
                }
                .font((.custom("IosevkaCharonMono-Regular", size: 14, relativeTo: .caption)))
                .foregroundStyle(.vcBodySecondary)
                
                Spacer()
                
                Text(dernierMessage)
                    .font((.custom("IosevkaCharonMono-Italic", size: 17, relativeTo: .footnote)))
                    .lineLimit(1)
                    .foregroundStyle(.vcBodySecondary)
                    .padding(.trailing, 56)
            }
        }
        .frame(height: 100)
        .styleCarte()
        .overlay(alignment: .bottomTrailing){
                Image(.feuille)
                .padding(.trailing, 16)
        }
        
    }
}

#Preview {
    CarteGroupes(image: "defaultCover",titre: "Potager des Oiseaux", arrondissement: "3e", membres: ["@PousseVerte75", "@PlanetteVerte"], dernierMessage: "Parfait. Et on en profite pour repiquer les jeunes plants dans la parcelle A, elle est prête depuis mardi dernier 🌱")
}
