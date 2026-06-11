//
//  ProfilDiscussion.swift
//  Vegecity
//
//  Created by Apprenant174 on 11/06/2026.
//

import SwiftUI

struct ProfilDiscussion: View {
    var typeMembre : Color
    var photoProfil : String
    
    var topLeading : CGFloat
    var bottomLeading : CGFloat
    var bottomTrailing : CGFloat
    var topTrailing : CGFloat
    
    var paddingTableau : Edge.Set
    
    var body: some View {
        ZStack{
            UnevenRoundedRectangle(topLeadingRadius: topLeading, bottomLeadingRadius: bottomLeading, bottomTrailingRadius: bottomTrailing, topTrailingRadius: topTrailing)
                .fill(typeMembre)
                
            
            UnevenRoundedRectangle(topLeadingRadius: topLeading, bottomLeadingRadius: bottomLeading, bottomTrailingRadius: bottomTrailing, topTrailingRadius: topTrailing)
                .fill(.vcPrimary)
                .padding(paddingTableau, 2)

            Image(photoProfil)
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0,
                       maxWidth: .infinity,
                       minHeight: 0,
                       maxHeight: .infinity
                )
                .aspectRatio(1/1 , contentMode: .fill)
                .clipShape(
                    UnevenRoundedRectangle(topLeadingRadius: topLeading, bottomLeadingRadius: bottomLeading, bottomTrailingRadius: bottomTrailing, topTrailingRadius: topTrailing)
                )
                .padding(paddingTableau, 3)

        }
        .frame(width: 40, height: 40)
    }
}

#Preview {
    ProfilDiscussion(typeMembre: .vcCardBorder, photoProfil: "defaultMember", topLeading: 24, bottomLeading: 0, bottomTrailing: 24, topTrailing: 0, paddingTableau: [.top, .trailing])
}
