//
//  ConteneurMessage.swift
//  Vegecity
//
//  Created by Apprenant174 on 11/06/2026.
//

import SwiftUI

struct ConteneurMessage: View {
    var pseudo : String
    var alignementPseudo : HorizontalAlignment
    var opacityPseudo : Double
    
    var message : String
    
    var topLeading : CGFloat
    var bottomLeading : CGFloat
    var bottomTrailing : CGFloat
    var topTrailing : CGFloat
    
    var fillConteneur : Color
    var strokeConteneur : Color
    
    var body: some View {
        VStack(alignment: alignementPseudo, spacing: 4){
            Text("@\(pseudo)")
                .font((.custom("IosevkaCharonMono-Regular", size: 12, relativeTo: .caption2)))
                .foregroundStyle(.vcBodySecondary)
                .opacity(opacityPseudo)
            
            Text("""
        \(message)
        """)
            .multilineTextAlignment(strategy: .writingDirectionBased)
            .multilineTextAlignment(.leading)
            .carteDescription()
            .padding([.leading, .trailing, .bottom], 12)
            .padding(.top, 8)
            .background{
                UnevenRoundedRectangle(topLeadingRadius: topLeading, bottomLeadingRadius: bottomLeading, bottomTrailingRadius: bottomTrailing, topTrailingRadius: topTrailing)
                    .fill(fillConteneur)
                    .stroke(strokeConteneur, lineWidth: 0.5)
            }
            .opacity(0.8)
        }
        
    }
}

#Preview {
    ConteneurMessage(pseudo: groupe1.messages[1].membre.pseudo, alignementPseudo: .leading, opacityPseudo: 12, message: groupe1.messages[1].detail, topLeading: 0, bottomLeading: 24, bottomTrailing: 16, topTrailing: 16, fillConteneur: .vcCardBg, strokeConteneur: .vcCardBorder)
}
