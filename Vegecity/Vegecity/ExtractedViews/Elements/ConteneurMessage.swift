//
//  ConteneurMessage.swift
//  Vegecity
//
//  Created by Apprenant174 on 11/06/2026.
//

import SwiftUI

struct ConteneurMessage: View {
    var message : String
    
    var topLeading : CGFloat
    var bottomLeading : CGFloat
    var bottomTrailing : CGFloat
    var topTrailing : CGFloat
    
    var fillConteneur : Color
    var strokeConteneur : Color
    
    var body: some View {
        Text("""
        \(message)
        """)
        .multilineTextAlignment(strategy: .writingDirectionBased)
        .font((.custom("IosevkaCharonMono-Regular", size: 14, relativeTo: .caption)))
        .padding(.vertical, 8)
        .padding(.horizontal, 12)
        .background{
            UnevenRoundedRectangle(topLeadingRadius: topLeading, bottomLeadingRadius: bottomLeading, bottomTrailingRadius: bottomTrailing, topTrailingRadius: topTrailing)
                .fill(fillConteneur)
                .stroke(strokeConteneur, lineWidth: 1)
        }
    }
}

#Preview {
    ConteneurMessage(message: groupe1.messages[1].detail, topLeading: 0, bottomLeading: 24, bottomTrailing: 16, topTrailing: 16, fillConteneur: .vcCardBg, strokeConteneur: .vcCardBorder)
}
