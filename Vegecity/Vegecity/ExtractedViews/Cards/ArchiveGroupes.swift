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
                        .padding(.vertical, 16)
                        .foregroundStyle(.vcIcon)
                        .font(.default)
                        .aspectRatio(1/1 , contentMode: .fill)
                }
                .frame(height: 42)
        }
    }
}

#Preview {
    ArchiveGroupes()
}
