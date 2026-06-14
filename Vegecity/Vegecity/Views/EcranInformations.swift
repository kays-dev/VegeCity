//
//  EcranInformations.swift
//  Vegecity
//
//  Created by Apprenant174 on 13/06/2026.
//

import SwiftUI

struct EcranInformations: View {
    @State private var toutesInfos : [Information] = informations.sorted{ $0.source.lowercased() < $1.source.lowercased()}
    
    @State private var resultats : [Information] = []
    
    @State private var problemeSelectionne : String = ""
    
    @State private var selection : Bool = false
    
    private func appliquerFiltres() {
        var liste = toutesInfos
        
        if selection {
            liste = liste.filter{ $0.problematiques.description.contains(problemeSelectionne) }
        }
        
        resultats = liste
    }
    
    private func selectionProb(prob : Problematique){
        if prob.nom != problemeSelectionne || problemeSelectionne == "" {
            problemeSelectionne =  prob.nom
            selection = true
            appliquerFiltres()
        } else {
            problemeSelectionne = ""
            selection = false
            appliquerFiltres()
        }
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24){
            //Liste
            LazyVStack(alignment: .leading, spacing: 16){
                ForEach($resultats){ $info in
                    NavigationLink {
                        DetailsInformation(information: $info)
                    } label : {
                        CarteInfos(information: $info)
                    }
                    .padding(.trailing, 20)
                }
            }
            .task {
                appliquerFiltres()
            }
            .onChange(of: problemeSelectionne) {
                appliquerFiltres()
            }
            .safeAreaInset(edge: .top) {
                //Filtres problématiques
                ScrollView(.horizontal){
                    HStack{
                        ForEach(problematiques){ theme in
                            Button{
                                selectionProb(prob: theme)
                            } label: {
                                HStack(alignment: .center, spacing: 4){
                                    Image(systemName: theme.icone).symbolVariant(.fill)
                                    Text(theme.nom)
                                }
                                .padding(.horizontal, 20)
                                .padding(.vertical, 8)
                                .background{
                                    Capsule()
                                        .fill( theme.nom == problemeSelectionne ? .vcCardIcon : .vcSearchbarBg)
                                }
                                .foregroundStyle(theme.nom == problemeSelectionne ? .vcPrimary : .vcIconBg)
                            }
                            
                        }
                    }
                    .padding(.leading, 2)
                    .padding(.vertical, 2)
                }
                .boutonFiltre()
                .mask {
                    UnevenRoundedRectangle(topLeadingRadius: 24, bottomLeadingRadius: 24)
                }
                .padding(.bottom)
                .scrollIndicators(.hidden)
            }
        }
        .padding(.top, 40)
        .padding(.leading, 20)
        .padding(.bottom, 28)
        .stylePage(photo: "infoCover", titrePage: "Informations pratiques")
    }
}

#Preview {
    EcranInformations()
}
