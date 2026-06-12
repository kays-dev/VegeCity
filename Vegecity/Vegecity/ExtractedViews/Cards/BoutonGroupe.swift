//
//  ArchiveGroupes.swift
//  Vegecity
//
//  Created by Apprenant174 on 07/06/2026.
//

import SwiftUI

struct BoutonGroupe: View {
    var icone : String
    
    var body: some View {
        HStack{
            Circle()
                .fill(.vcIconBg)
                .overlay(alignment: .center){
                    Image(systemName: icone)
                        .foregroundStyle(.vcIcon)
                        .font(.title3)
                }
                .frame(height: 42)
        }
    }
}

#Preview {
    BoutonGroupe(icone: "archivebox")
}
