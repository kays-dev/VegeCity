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
        HStack(alignment: .top, spacing: 4){
            ProfilDiscussion(typeMembre: .vcCardBorder, photoProfil: imageProfil, topLeading: 24, bottomLeading: 0, bottomTrailing: 24, topTrailing: 0, paddingTableau: [.top, .trailing])
                .padding(.top, 19)
            
            ConteneurMessage(pseudo: pseudo, alignementPseudo: .leading, message: message, topLeading: 0, bottomLeading: 24, bottomTrailing: 16, topTrailing: 16, fillConteneur: .vcCardBg, strokeConteneur: .vcCardBorder)
            
            HeureMessage(dateMessage: dateMessage)
                .padding(.top, 19)
        }
        .padding(.trailing, 28)
        .foregroundStyle(.vcBodyPrimary)
    }
}

#Preview {
    MessageMembre(pseudo: groupe1.messages[1].membre.pseudo, imageProfil: groupe1.messages[1].membre.image, message: groupe1.messages[1].detail, dateMessage: groupe1.messages[1].dateEnvoi)
}
