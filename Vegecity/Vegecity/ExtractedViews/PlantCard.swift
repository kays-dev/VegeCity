//
//  PlantCard.swift
//  Vegecity
//
//  Created by apprenant168 on 11/06/2026.
//

import SwiftUI

struct PlantCard: View {
    
    //let typesPlusConcrets: PlantType
    let plante: Plante
    
    var body: some View {
        
        HStack(alignment: .top, spacing: 12){
            Image(plante.image)
                .resizable()
                .scaledToFill()
                .overlay{
                    // Rectangle().fill(.vcGreenFilter)
                    //Rectangle().fill(.vcLighterFilter)
                }
                .frame(minWidth: 0,
                       maxWidth: .infinity,
                       minHeight: 0,
                       maxHeight: .infinity
                )
                .aspectRatio(1/1 , contentMode: .fit) //permet à l'image de respecter un ratio en fonction de l'espace et de la taille de l'écran
                .clipShape(.rect(cornerRadius: 12))
            
            VStack(alignment: .leading) {
                Text(plante.nom)
                    .font(.title2)
                Text(plante.type)
                    .font(.subheadline) //subheadline
                    .foregroundStyle(.vcBodySecondary)
                HStack(alignment: .bottom) {
                    ForEach(types) { typePrecis in
                        PlantTypes(typesConcrets: typePrecis)
                            .foregroundStyle(.accent)
                            .frame(alignment: .leading)
                        // .background(.accent)
                        // .clipShape(.circle)
                    }
                }
            }}
            .frame(height: 100)
            .styleCarte()
            .overlay(alignment: .topTrailing){
                Image(systemName: "heart")
                    .foregroundStyle(.accent)
                    .padding()
                
                if plante.favorites {
                    Image(systemName: "heart.fill").foregroundStyle(.accent) }
            }
        }
    }

struct PlantCardExemple: View {
    var body: some View {
        HStack(alignment: .top, spacing: 12){
            Image("Amarante ornementale")
                .resizable()
                .scaledToFill()
                .overlay{
                    // Rectangle().fill(.vcGreenFilter)
                    //Rectangle().fill(.vcLighterFilter)
                }
                .frame(minWidth: 0,
                       maxWidth: .infinity,
                       minHeight: 0,
                       maxHeight: .infinity
                )
                .aspectRatio(1/1 , contentMode: .fit) //permet à l'image de respecter un ratio en fonction de l'espace et de la taille de l'écran
                .clipShape(.rect(cornerRadius: 12))
            
            VStack(alignment: .leading) {
                Text("Amarante ornementale")
                    .font(.title2)
                //  Divider()
                
                Text("Feuillages")
                    .font(.subheadline) //subheadline
                    .foregroundStyle(.vcBodySecondary)
                
                    Image(systemName: "carrot.fill")
                        .foregroundStyle(.accent)
                        .frame(alignment: .bottomLeading)
                    // .background(.accent)
                    // .clipShape(.circle)
        }
    }
            .frame(height: 100)
            .styleCarte()
            .overlay(alignment: .topTrailing){
                Image(systemName: "heart")
                    .foregroundStyle(.accent)
                    .padding()
                
//                if favorites {
//                    Image(systemName: "heart.fill").foregroundStyle(.accent) }
            }
        }
    }
    
    struct PlantCardView: View {
        var body: some View {
            VStack { ForEach(exemples) { plante in
                PlantCard(plante: plante)
                }
            }
        }
    }
#Preview {
   PlantCardExemple()
}
