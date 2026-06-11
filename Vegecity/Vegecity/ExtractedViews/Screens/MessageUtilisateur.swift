//
//  MessageUtilisateur.swift
//  Vegecity
//
//  Created by Apprenant174 on 11/06/2026.
//

import SwiftUI

struct MessageUtilisateur: View {
    var pseudo : String
    var imageProfil : String
    var message : String
    var dateMessage : DateComponents
    
    var body: some View {
        VStack(spacing: 4){
            Text("@\(pseudo)")
                .font((.custom("IosevkaCharonMono-Regular", size: 12, relativeTo: .caption2)))
                .foregroundStyle(.vcBodySecondary)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing, 44)
            
            HStack(alignment: .top, spacing: 4){
                HeureMessage(dateMessage: dateMessage)
                
                ConteneurMessage(message: message, topLeading: 16, bottomLeading: 16, bottomTrailing: 24, topTrailing: 0, fillConteneur: .vcCardMessage, strokeConteneur: .vcPrimary)
                    .multilineTextAlignment(.leading)
                
                ProfilDiscussion(typeMembre: .vcCardIcon, photoProfil: imageProfil, topLeading: 0, bottomLeading: 24, bottomTrailing: 0, topTrailing: 24, paddingTableau: [.top, .leading])
                
            }
        }
        .padding(.leading, 28)
        .foregroundStyle(.vcBodyPrimary)
    }
}

#Preview {
    MessageUtilisateur(pseudo: groupe1.messages[0].membre.pseudo, imageProfil: groupe1.messages[0].membre.image, message: groupe1.messages[0].detail, dateMessage: groupe1.messages[0].dateEnvoi)
}

