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
    
    @State private var messageTape : String = ""
    
    private func ajoutMessage(envoye : String) -> Void {
        groupeMessages.append(
            Message(membre: utilisateur, detail: envoye, dateEnvoi: Calendar.autoupdatingCurrent.dateComponents([.year, .month, .day, .hour, .minute], from: maintenant) ))
        
        messageTape = ""
    }
    
    var body: some View {
        ZStack(alignment: .top){
            Color.vcPrimary
                .ignoresSafeArea()
            
            ScrollViewReader { basDePage in
                ScrollView(.vertical){
                    
                    LazyVStack(alignment: .leading, spacing: 24){
                        ForEach(groupeMessages){ message in
                            if message.membre != utilisateur {
                                MessageMembre(pseudo: message.membre.pseudo, imageProfil: message.membre.image, message: message.detail, dateMessage: message.dateEnvoi).id(message.id)
                            } else {
                                MessageUtilisateur(pseudo: message.membre.pseudo, imageProfil: message.membre.image, message: message.detail, dateMessage: message.dateEnvoi).id(message.id)
                                    .frame(maxWidth: .infinity, alignment: .trailing)
                            }
                            
                        }
                    }
                    .task{
                        basDePage.scrollTo(groupeMessages.last?.id)
                    }
                    .onChange(of: groupeMessages){
                        basDePage.scrollTo(groupeMessages.last?.id)
                    }
                }
                .safeAreaInset(edge: .bottom) {
                    HStack(alignment: .top){
                        BarreMessage(messageTape: $messageTape)
                        
                        
                        Button {
                            ajoutMessage(envoye: messageTape)
                        } label: {
                            BoutonGroupe(icone: "paperplane.fill", foreground: .vcIcon, fillIcone: messageTape.isEmpty ?  .vcSearchbarBg :.accent)
                        }
                        .disabled(messageTape.isEmpty)
                        
                    }
                    .padding(.top, 12)
                    .padding(.bottom, 12)
                    .background{
                        Rectangle()
                            .fill(.vcPrimary)
                            .ignoresSafeArea()
                    }
                }
                .onAppear{
                    basDePage.scrollTo(1)
                }
                .onChange(of: groupeMessages){
                    basDePage.scrollTo(1)
                }
            }
            .scrollIndicators(.hidden)
            .scrollDismissesKeyboard(.immediately)
            .padding(.horizontal)
        }
        .navigationTitle("\(groupe.activite.nom)")
        .toolbar(.hidden, for:  .tabBar)
        
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
