//
//  EcranDiscussion.swift
//  Vegecity
//
//  Created by Apprenant174 on 11/06/2026.
//

import SwiftUI

struct EcranDiscussion: View {
    @Binding var groupe : Groupe
    
    @Binding var groupeMessages : [Message]
    
    var maintenant = Date.now
    
    func ajoutMessage(envoye : String) -> Void {
        groupeMessages.append(
            Message(membre: utilisateur, detail: envoye, dateEnvoi: Calendar.autoupdatingCurrent.dateComponents([.year, .month, .day, .hour, .minute], from: maintenant) ))
    }
    
    @State private var messageTape : String = ""
    
    
    var body: some View {
        ZStack(alignment: .top){
            Color.vcPrimary
                .ignoresSafeArea()
            
            ScrollViewReader { basDePage in
                ScrollView(.vertical){
                    
                    VStack(alignment: .leading, spacing: 24){
                        ForEach(groupeMessages){ message in
                            if message.membre != utilisateur {
                                MessageMembre(pseudo: message.membre.pseudo, imageProfil: message.membre.image, message: message.detail, dateMessage: message.dateEnvoi).id(message.id)
                            } else {
                                MessageUtilisateur(pseudo: message.membre.pseudo, imageProfil: message.membre.image, message: message.detail, dateMessage: message.dateEnvoi).id(message.id)
                                    .frame(maxWidth: .infinity, alignment: .trailing)
                            }
                            
                        }
                        .onChange(of: groupeMessages) {
                            basDePage.scrollTo(1)
                        }
                        
                        HStack(alignment: .top){
                            BarreMessage(messageTape: $messageTape)
                            
                            Button {
                                ajoutMessage(envoye: messageTape)
                            } label: {
                                BoutonGroupe(icone: "paperplane.fill")
                            }

                        }.id(1)
                        
                    }
                    
                }
                .padding(.horizontal)
                .scrollIndicators(.hidden)
                .onAppear{
                    basDePage.scrollTo(1)
                }
            }
            
        }
        .toolbar(.hidden)
        
    }
}

#Preview {
    struct PreviewDisc : View {
        @State private var groupe = groupe1
        @State private var groupeMessage = groupe1.messages
        
        var body : some View {
            EcranDiscussion(groupe: $groupe, groupeMessages: $groupeMessage)
        }
    }
    
    return PreviewDisc()
    
}
