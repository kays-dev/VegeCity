//
//  ArchiveGroupes.swift
//  Vegecity
//
//  Created by Apprenant174 on 07/06/2026.
//

import SwiftUI

struct ArchiveGroupes: View {
    var body: some View {
        HStack{
            Circle()
                .fill(.vcIconBg)
                .overlay(alignment: .center){
                    Image(systemName: "archivebox")
                        .foregroundStyle(.vcIcon)
                        .font(.default)
                }
        }
    }
}

#Preview {
    ArchiveGroupes()
}
