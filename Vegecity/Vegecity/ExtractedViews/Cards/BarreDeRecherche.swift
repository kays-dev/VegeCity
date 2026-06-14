//
//  BarreDeRecherche.swift
//  Vegecity
//
//  Created by Apprenant174 on 07/06/2026.
//

import SwiftUI

struct BarreDeRecherche: View {
    @Binding var saisie : String
    
    var texte : String = ""
    @FocusState private var isFocused: Bool
    
    var body: some View {
        Capsule()
            .fill(.vcSearchbarBg)
            .overlay(alignment: .leading){
                HStack(spacing: 12){
                    Image(systemName: "magnifyingglass")
                    
                    TextField(texte, text: $saisie, axis: .vertical)
                        .font((.custom("IosevkaCharonMono-Medium", size: 17, relativeTo: .callout)))
                        .lineLimit(1)
                }
                .foregroundStyle(.vcSearchbarText)
                .padding(.horizontal, 20)
            }
            .frame(height: 42)
    }
}

#Preview {
    struct PreviewBDR : View {
        @State private var saisie = ""
        
        var body : some View {
            BarreDeRecherche(saisie: $saisie)
        }
    }
    
    return PreviewBDR()
    
}
