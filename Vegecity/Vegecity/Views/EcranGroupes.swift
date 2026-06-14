//
//  Groupes.swift
//  Vegecity
//
//  Created by Apprenant174 on 07/06/2026.
//

import SwiftUI

struct EcranGroupes: View {
    @State private var rechercheGroupe : String = ""
    
    @State private var tousGroupes : [Groupe] = groupes
    
    @State private var resultats : [Groupe] = groupes
    
    @State private var archives : Bool = false
    
    @FocusState private var isFocused: Bool
    
    private func appliquerFiltres() {
        var liste = tousGroupes
        
        if archives {
            liste = liste.filter{ $0.archive }
        } else {
            liste = liste.filter{ $0.archive == false}
        }
        
        if !rechercheGroupe.isEmpty {
            liste = liste.filter { $0.activite.nom.localizedCaseInsensitiveContains(rechercheGroupe) }
        }
        
        resultats = liste
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24){
            
            LazyVStack(alignment: .leading, spacing: 16){
                ForEach($resultats){ $groupe in
                    
                    NavigationLink {
                        EcranDiscussion(groupe: $groupe, groupeMessages: $groupe.messages)
                    } label : {
                        CarteGroupes(groupe: groupe)
                    }
                    .contextMenu{
                        Button(role: .destructive){
                            groupe.archive = true
                        } label : {
                            Label("Archiver", systemImage: "archivebox")
                        }
                    }
                    .onChange(of: groupe.archive) {
                        if let index = tousGroupes.firstIndex(where: { $0.id == groupe.id }) {
                            tousGroupes[index].archive = groupe.archive
                        }
                        appliquerFiltres()
                    }
                }
            }
            .onChange(of: rechercheGroupe) {
                appliquerFiltres()
            }
            .safeAreaInset(edge: .top) {
                HStack{
                    BarreDeRecherche(saisie: $rechercheGroupe, texte: "Rechercher un groupe")
                        .focused($isFocused)
                    
                    Button{
                        archives.toggle()
                        appliquerFiltres()
                    } label: {
                        BoutonGroupe(icone: "archivebox", foreground: .vcIcon, fillIcone: archives ? .vcCardIcon : .vcIconBg)
                    }
                }
                .padding(.bottom)
            }
            
        }
        .padding(.top, 40)
        .padding(.horizontal, 20)
        .padding(.bottom, 28)
        .stylePage(photo: "groupCover", titrePage: "Groupes de discussion")
        .onTapGesture {
            isFocused = false
            UIApplication.shared.sendAction(
                #selector(UIResponder.resignFirstResponder),
                to: nil,
                from: nil,
                for: nil
            )
        }
        
    }
}

#Preview {
    EcranGroupes()
}
