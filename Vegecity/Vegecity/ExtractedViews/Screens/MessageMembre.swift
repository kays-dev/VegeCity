//
//  MessageMembre.swift
//  Vegecity
//
//  Created by Apprenant174 on 11/06/2026.
//

import SwiftUI

struct MessageMembre: View {
    var pseudo : String
    var imageProfil : String
    var message : String
    var dateMessage : DateComponents
    
    var body: some View {
        VStack(spacing: 4){
            Text("@\(pseudo)")
                .font((.custom("IosevkaCharonMono-Regular", size: 12, relativeTo: .caption2)))
                .foregroundStyle(.vcBodySecondary)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 44)
            
            HStack(alignment: .top, spacing: 4){
                ProfilDiscussion(typeMembre: .vcCardBorder, photoProfil: imageProfil, topLeading: 24, bottomLeading: 0, bottomTrailing: 24, topTrailing: 0, paddingTableau: [.top, .trailing])
                
                ConteneurMessage(message: message, topLeading: 0, bottomLeading: 24, bottomTrailing: 16, topTrailing: 16, fillConteneur: .vcCardBg, strokeConteneur: .vcCardBorder)
                    .multilineTextAlignment(.trailing)
                
                HeureMessage(dateMessage: dateMessage)
            }
        }
        .padding(.trailing, 28)
        .foregroundStyle(.vcBodyPrimary)
    }
}

#Preview {
    MessageMembre(pseudo: groupe1.messages[1].membre.pseudo, imageProfil: groupe1.messages[1].membre.image, message: groupe1.messages[1].detail, dateMessage: groupe1.messages[1].dateEnvoi)
}
