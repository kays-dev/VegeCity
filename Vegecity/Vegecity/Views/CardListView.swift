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
    
    
    var body: some View {
        
        NavigationStack {
            
            VStack(spacing: 24) {
                
                BarreDeRecherche(saisie: $searchText)
                    .padding(.horizontal, 42)
                
                HStack(spacing: 32) {
                    Picker("Picker", selection: $choiceSelected) {
                        ForEach(Niveau.allCases) { niveau in
                            Text(niveau.name).tag(niveau)
                        }
                    }
                    .padding(8)
                    .background{
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.vcCardBg)
                            .stroke(.vcCardBorder, lineWidth: 1)
                            .shadow(color: .vcCardShadow, radius: 8, x:0, y:2)
                        
                    }
                    .tint(.vcBodyPrimary)
                    
                    
                    Button("Accessible") {
                        withAnimation(.snappy) {
                            isVisible.toggle()
                        }
                    }
                    
                    .padding(.horizontal, 16)
                    .padding(.vertical, 16)
                    .background{
                        RoundedRectangle(cornerRadius: 20)
                            .fill(isVisible ? .vcSecondary : .vcCardBg)
                            .stroke(.vcCardBorder, lineWidth: 1)
                            .shadow(color: .vcCardShadow, radius: 8, x:0, y:2)
                    }
                    .tint(.vcBodyPrimary)
                    
                }
                .frame(maxWidth: .infinity, alignment: .center)
                
                
                ForEach(filteredActivites) { activite in
                    
                    HStack() {
                        
                        Image(activite.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 100)
                            .cornerRadius(10)
                            .padding(2)
                        
                        VStack(alignment: .leading, spacing: 0) {
                            Text(activite.nom)
                                .font(.headline)
                            Text(activite.desc_activite)
                                .font(.subheadline)
                                .padding(.vertical, 5)
                                .font(.caption)
                            
                            HStack(spacing: 4) {
                                Image(systemName: "\(activite.niveau).circle")
                                    .font(.title2 )
                                Image(systemName: "figure.roll.circle")
                                    .font(.title2 )
                            }
                           
                            HStack {
                                Text(activite.nbrPlace > 0 ?  "Libre" : "Complet")
                                    .font(.subheadline)
                                    .foregroundStyle(Color.orange)
                                    .padding(.vertical, 10)
                                    .padding(.horizontal, 0)
                                    .frame(maxWidth: .infinity,maxHeight: 100, alignment: .topLeading)
                            }
                            
                        }
                        .frame(maxWidth: .infinity,maxHeight: 100, alignment: .topLeading)
                    }
                    .styleCarte()
                }
                
            }.padding(12)
                .stylePage(photo: "gambetta", titrePage: "Lieu d'activité")
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
