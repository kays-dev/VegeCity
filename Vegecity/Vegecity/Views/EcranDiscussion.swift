//
//  EcranDiscussion.swift
//  Vegecity
//
//  Created by Apprenant174 on 11/06/2026.
//

import SwiftUI

struct EcranDiscussion: View {
    @Binding var groupe : Groupe
    
    var body: some View {
        ZStack(alignment: .top){
            Color.vcPrimary
                .ignoresSafeArea()
            
            ScrollViewReader { dernierMessage in
                ScrollView(.vertical){
                    
                    VStack(spacing: 24){
                        ForEach(groupe.messages){ message in
                            if message.membre != utilisateur {
                                MessageMembre(pseudo: message.membre.pseudo, imageProfil: message.membre.image, message: message.detail, dateMessage: message.dateEnvoi).id(message.id)
                            } else {
                                MessageUtilisateur(pseudo: message.membre.pseudo, imageProfil: message.membre.image, message: message.detail, dateMessage: message.dateEnvoi).id(message.id)
                            }
                            
                        }
                        .onAppear{
                            dernierMessage.scrollTo(groupe.messages.last?.id)
                        }
                        
                    }
                    
                }
                .padding(.horizontal)
                .scrollIndicators(.hidden)
            }
            
        }
        .toolbar(.hidden)
        
    }
}

#Preview {
    struct PreviewVar : View {
        @State private var groupe = groupe1
        
        var body : some View {
            EcranDiscussion(groupe: $groupe)
        }
    }
    
    return PreviewVar()

}
