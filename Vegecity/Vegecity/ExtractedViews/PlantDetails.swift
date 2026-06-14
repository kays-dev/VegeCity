//
//  PlantDetails.swift
//  Vegecity
//
//  Created by apprenant168 on 14/06/2026.
//

import SwiftUI

struct PlantDetails: View {
    let planteDetails: Plante
    
    var body: some View {
        NavigationStack {
            HStack(alignment: .top, spacing: 12){
                Image(planteDetails.image)
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
                    Text(planteDetails.nom)
                        .font(.title2)
                    Text(planteDetails.type)
                        .font(.subheadline) //subheadline
                        .foregroundStyle(.vcBodySecondary)
                    Spacer()
                    HStack(alignment: .bottom) {
                        //  Image(systemName: typesConcrets.image)
                        //                    ForEach(types) { typePrecis in
                        //                        PlantTypes(typesConcrets: typePrecis)
                        //                            .foregroundStyle(.accent)
                        //                            .frame(alignment: .leading)
                        // .background(.accent)
                        // .clipShape(.circle)
                    }
                }
            }
            .frame(height: 100)
            .styleCarte()
            .overlay(alignment: .topTrailing){
                Image(systemName: "heart")
                    .foregroundStyle(.accent)
                    .padding()
                
                if planteDetails.favorites {
                    Image(systemName: "heart.fill").foregroundStyle(.accent) }
            }
        }
    }
}
struct PlantDetailsExemple: View {
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
            //.styleCarte()
//           n
//                if favorites {
//                    Image(systemName: "heart.fill").foregroundStyle(.accent) }
            }
        }
    
#Preview {
    //PlantDetails()
    PlantDetailsExemple()
}
