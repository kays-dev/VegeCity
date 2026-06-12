//
//  PlantCard.swift
//  Vegecity
//
//  Created by apprenant168 on 11/06/2026.
//

import SwiftUI

struct PlantCard: View {
    
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
            
            VStack(alignment: .leading, spacing: 12){
                Text(plante.nom)
                    .font(.title2)
                //  Divider()
                
                Text(plante.type)
               
                    .font(.subheadline) //subheadline
                    .foregroundStyle(.vcBodySecondary)
         
                HStack {
                    ForEach(types) { filtre in
                        Image(systemName: filtre.image)
                            .foregroundStyle(.accent)
                           // .frame(maxWidth: .infinity, alignment: .center)
                           // .background(.accent)
                           // .clipShape(.circle)
                    }
                }
                
                }
            }
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
    
    struct PlantCardView: View {
        var body: some View {
            
            ForEach(exemples) { plante in
                PlantCard(plante: plante)
            }
        }
    }


#Preview {
    PlantCardView()
}
