//
//  BaseCarte.swift
//  Vegecity
//
//  Created by Apprenant174 on 07/06/2026.
//

import SwiftUI

struct BaseCarte<Content: View>: View {
    
    @ViewBuilder var content: () -> Content
    
    var body: some View {
        HStack(alignment: .top, spacing: 16){
            content()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(16)
        .background{
            RoundedRectangle(cornerRadius: 20)
                .fill(.vcCardBg)
                .stroke(.vcCardBorder, lineWidth: 1)
                .shadow(color: .vcCardShadow, radius: 8, x:0, y:2)
            
        }
    }
}

#Preview {
    BaseCarte(){
        VStack(alignment: .leading, spacing: 12) {
            Text("Exemple de content() (dans la _Preview_)")
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
                    Text("Titre")
                    Text("Description")
                }
                
            }
            .frame(height: 100)
            
        }
    }
}
