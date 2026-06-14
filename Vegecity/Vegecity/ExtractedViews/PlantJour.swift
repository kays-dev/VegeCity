//
//  PlantJour.swift
//  Vegecity
//
//  Created by apprenant168 on 11/06/2026.
//

import SwiftUI

struct PlantJour: View {
    
    let plantJour: Plante
    
    var hauteur: CGFloat = 160
    var body: some View {
            
            VStack(alignment: .center, spacing: 12){
           
                Image(plantJour.image)
                    .resizable()
                // .scaledToFill()
                    .clipped()
                    .aspectRatio(1/1 , contentMode: .fit) //permet à l'image de respecter un ratio en fonction de l'espace et de la taille de l'écran
                    //.clipShape(.circle)
                    .clipShape(.rect(cornerRadius: 12))
                //.frame(height: 40)
                //Divider()
                //Spacer()
                
//                    .overlay(alignment: .topTrailing){
//                        Image(systemName: "heart")
//                            .foregroundStyle(.accent)
//                            .padding()
//                        
//                        if plantJour.favorites {
//                            Image(systemName: "heart.fill").foregroundStyle(.accent) }
//                        
//                    }
                    
                Text(plantJour.nom).carteDescription()
                        .lineLimit(1)
                        .padding(.bottom)
            } //.styleCarte()
            //.background(.vcCardBg)
            .frame(width: 100)
            //.clipShape(.rect(cornerRadius: 12))
            // .frame(height: 100)
            .frame(height: hauteur)
        
           // .padding()
        }
    }

    
    struct PlantJourView: View {
        var body: some View {
            
            ForEach(exemples) { plante in
                PlantJour(plantJour: plante)
            }
        }
    }


#Preview {
    PlantJourView()
}
