//
//  BarreDeRecherche.swift
//  Vegecity
//
//  Created by Apprenant174 on 07/06/2026.
//

import SwiftUI

struct BarreDeRecherche: View {
    @State private var saisie : String = ""
    
    var body: some View {
        Capsule()
            .fill(.vcSearchbarBg)
            .overlay(alignment: .leading){
                HStack(spacing: 12){
                    Image(systemName: "magnifyingglass")
                    
                    TextField("Rechercher un groupe", text: $saisie, axis: .vertical)
                        .font(.default)
                }
                .foregroundStyle(.vcSearchbarText)
                .padding(.horizontal, 20)
            }
            .frame(height: 52)
    }
}

#Preview {
    BarreDeRecherche()
}
