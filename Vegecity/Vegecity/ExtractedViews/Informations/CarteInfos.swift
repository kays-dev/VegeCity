//
//  CarteInfos.swift
//  Vegecity
//
//  Created by Apprenant174 on 13/06/2026.
//

import SwiftUI

struct CarteInfos: View {
    @Binding var information: Information
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4){
            HStack(spacing: 8){
                HStack(spacing: 4){
                    Image(systemName: information.type.icone)
                    
                    Text(information.type.nom)
                }
                
                ForEach(information.problematiques){ theme in
                    Image(systemName: theme.icone)
                }
            }
            .legende()
            
            VStack(alignment: .leading){
                Text("""
                    \(information.titre)
                    """)
                .grandTitre()
                
                Text(information.source)
                    .sousTitre()
            }
            
            
            Text("""
                \(information.resume)
                """)
            .carteDescription()
            .padding(.trailing, 24)
            .padding(.top, 16)
            
            
        }
        .multilineTextAlignment(.leading)
        .styleCarte()
    }
}

#Preview {
    struct CarteInfo : View {
        @State private var info = informations[0]
        
        var body : some View {
            CarteInfos(information: $info)
        }
    }
    
    return CarteInfo()
}
