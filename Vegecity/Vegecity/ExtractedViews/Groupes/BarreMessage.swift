//
//  SwiftUIView.swift
//  Vegecity
//
//  Created by Apprenant174 on 12/06/2026.
//

import SwiftUI

struct BarreMessage: View {
    @Binding var messageTape : String
    
    var body: some View {
        HStack(spacing: 12){
            TextField("Entrez votre message", text: $messageTape, axis: .vertical)
                .font((.custom("IosevkaCharonMono-Medium", size: 17, relativeTo: .callout)))
                .padding(.leading, 24)
        }
        .frame(maxWidth: .infinity,alignment: .topLeading)
        .overlay(alignment: .topLeading) {
            Image(systemName: "plus")
                .padding(.top, 2)
        }
        .foregroundStyle(.vcSearchbarText)
        .padding(.vertical, 12)
        .padding(.horizontal, 20)
        .background{
            RoundedRectangle(cornerRadius: 24)
                .fill(.vcSearchbarBg)
                .overlay(alignment: .leading){
                    
                }
                .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    struct PreviewMessage : View {
        @State private var message = ""
        
        var body : some View {
            BarreMessage(messageTape: $message)
        }
    }
    
    return PreviewMessage()
}
