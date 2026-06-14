//
//  CarteLieu.swift
//  CarnetDeVoyage
//
//  Created by Apprenant160 on 04/06/2026.
//

import SwiftUI

struct CardListView: View {
    
    enum Niveau: String, CaseIterable, Identifiable {
        var id: String { self.rawValue }
        case all
        case un
        case deux
        case trois
        
        var name: String {
            switch self {
            case .all:
                "Tous niveaux"
            case .un:
                "Niveau 1"
            case .deux:
                "Niveau 2"
            case .trois:
                "Niveau 3"
            }
        }
    }
    
    @State private var choiceSelected: Niveau = Niveau.all
    @State private var searchText = ""
    @State private var isTouch = false
    @State private var isVisible = false
    @FocusState private var isFocused: Bool
    
    
    var body: some View {
        VStack(spacing: 24) {
            
            BarreDeRecherche(saisie: $searchText, texte: "Rechercher une activité")
                .focused($isFocused)
            
            HStack(spacing: 32) {
                Menu {
                    Picker(selection: $choiceSelected) {
                        ForEach(Niveau.allCases) { niveau in
                            Text(niveau.name).tag(niveau)
                        }
                    } label: {}
                } label: {
                    Text(choiceSelected.name)
                        .foregroundStyle(.vcBodyPrimary)
                        .boutonFiltre()
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
                .background{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.vcCardBg)
                        .stroke(.vcCardBorder, lineWidth: 1)
                        .shadow(color: .vcCardShadow, radius: 8, x:0, y:2)
                    
                }
                
                Button("Accessible") {
                    withAnimation(.snappy) {
                        isVisible.toggle()
                    }
                }
                .foregroundStyle(isVisible ? .vcPrimary : .vcBodyPrimary)
                .boutonFiltre()
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
                .background{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(isVisible ? .vcCardIcon : .vcCardBg)
                        .stroke(.vcCardBorder, lineWidth: 1)
                        .shadow(color: .vcCardShadow, radius: 8, x:0, y:2)
                }
                .tint(.vcBodyPrimary)
                
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .foregroundStyle(.vcBodyPrimary)
            .boutonFiltre()
            
            VStack(spacing: 16){
                ForEach(filteredActivites) { activite in
                    NavigationLink{
                        ActiviteView(activite: activite)
                    } label : {
                        HStack{
                            
                            Image(activite.image)
                                .resizable()
                                .scaledToFill()
                                .overlay{
                                    Rectangle().fill(.vcGreenFilter)
                                    Rectangle().fill(.vcLightFilter)
                                }
                                .frame(minWidth: 0,
                                       maxWidth: 100,
                                       minHeight: 0,
                                       maxHeight: 100
                                )
                                .aspectRatio(1/1 , contentMode: .fit)
                                .clipShape(.rect(cornerRadius: 12))
                            
                            VStack(alignment: .leading, spacing: 4) {
                                VStack(alignment: .leading) {
                                    Text(activite.nom)
                                        .grandTitre()
                                    Text(activite.desc_lieu)
                                        .sousTitre()
                                }
                                
                                HStack(spacing: 8) {
                                    Image(systemName: "\(activite.niveau).circle")
                                    Image(systemName: "figure.roll.circle")
                                }
                                .sousTitre()
                                
                                Spacer()
                                
                                Text(activite.nbrPlace > 0 ?  "Libre" : "Complet")
                                    .legende()
                                
                            }
                            .frame(maxWidth: .infinity, alignment: .topLeading)
                        }
                        .frame(height: 100)
                        .styleCarte()
                    }
                }
            }
            
        }
        .padding(.top, 40)
        .padding(.horizontal, 20)
        .padding(.bottom, 28)
        .stylePage(photo: "gambetta", titrePage: "Lieux à proximité")
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
    
    private var filteredActivites: [Activite] {
        var temp = activites.filter { activite in
            if isVisible {
                return activite.accessibilite
            } else {
                return true
            }
        }
        
        temp = temp.filter({ activite in
            switch choiceSelected {
            case .all:
                return true
            case .un:
                return activite.niveau == 1
            case .deux:
                return activite.niveau == 2
            case .trois:
                return activite.niveau == 3
            }
        })
        
        return temp
    }
}


#Preview {
    CardListView()
}
