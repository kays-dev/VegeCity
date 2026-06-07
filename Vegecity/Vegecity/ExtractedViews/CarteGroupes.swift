//
//  CarteGroupes.swift
//  Vegecity
//
//  Created by Apprenant174 on 07/06/2026.
//

import SwiftUI

struct CarteGroupes: View {
    var titre : String
    var arrondissment : String
    var membres : String
    var dernierMessage : String
    
    var body: some View {
        BaseCarte {
            HStack(alignment: .top){
                Image(.defaultCover)
                    .resizable()
                    .scaledToFill()
                    .frame(minWidth: 0,
                           maxWidth: .infinity,
                           minHeight: 0,
                           maxHeight: .infinity
                    )
                    .aspectRatio(1/1 , contentMode: .fit) //permet à l'image de respecter un ratio en fonction de l'espace et de la taille de l'écran
                    .clipShape(.rect(cornerRadius: 12))
                
                VStack(alignment: .leading){
                    Text(titre)
                        .font(.title2)
                    
                    HStack(spacing: 12){
                        HStack(spacing: 2){
                            Image(systemName: "map").symbolVariant(.fill)
                            Text(arrondissment)
                        }
                        
                        HStack(spacing: 2){
                            Image(systemName: "person.2").symbolVariant(.fill)
                            Text(membres)
                                .lineLimit(1)
                        }
                    }
                    .font(.caption)
                    .foregroundStyle(.vcBodySecondary)
                    
                    Spacer()
                    
                    Text(dernierMessage)
                        .lineLimit(1)
                        .italic()
                        .foregroundStyle(.vcBodySecondary)
                        .padding(.trailing, 56)
                }
            }
            .frame(height: 100)
            .overlay(alignment: .bottomTrailing){
                ZStack{
                    Image(.feuille)
                }
                .padding(.bottom, -16)
            }
        }
    }
}

#Preview {
    CarteGroupes(titre: "Potager des Oiseaux", arrondissment: "3e", membres: "@PousseVerte75, @PlanetteVerte", dernierMessage: "Parfait. Et on en profite pour repiquer les jeunes plants dans la parcelle A, elle est prête depuis mardi dernier 🌱")
}
