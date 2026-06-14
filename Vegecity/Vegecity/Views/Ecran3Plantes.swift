//
//  Ecran3Plantes.swift
//  Vegecity
//
//  Created by apprenant168 on 13/06/2026.
//

import SwiftUI

struct Ecran3Plantes: View {
    //let resultats = [Plante]()
    @State private var recherche = ""
    @State private var resultats: [Plante] = exemples
    // @State private var searchText = ""
    // @State private var searchIsActive = false
    @State private var typeSelected = ""
    
    @FocusState private var isFocused: Bool
    let plantSearch: [Plante] = exemples
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 24) {
                BarreDeRecherche(saisie: $recherche, texte: "Lierre, Pinus, fruitiers...")
                    .focused($isFocused)
                HStack() {
                    Picker("Type", selection: $typeSelected) {
                        ForEach(exemples) { type in Text(type.type)}
                        //ForEach(exemples) { Text() }
                    }
                    .pickerStyle(.menu)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(.vcSearchbarBg)
                    .clipShape(.circle)
                    
                    ForEach(problematiques) { filtre in
                        Image(systemName: filtre.icone).font(.title)
                            .frame(maxWidth: .infinity, alignment: .center)
                        //.foregroundStyle(.accent)
                    }
                }
                .foregroundStyle(.vcSearchbarText)
                
                VStack(alignment: .leading, spacing: 12) {
                    Text("Plantes du jour")
                        .foregroundStyle(.vcBodySecondary)
                        .grandTitre()
                    ScrollView(.horizontal, showsIndicators: true) {
                        HStack(spacing: 24) {
                            ForEach(exemples) { plantOfTheDay in
                                NavigationLink(destination: PlantJour(plantJour: plantOfTheDay))  { PlantJour(plantJour: plantOfTheDay) }
                            }
                        }
                    } .styleCarte()
                }
                
                VStack(alignment: .leading, spacing: 12) {
                    Text("Propositions...")
                        .foregroundStyle(.vcBodySecondary)
                        .grandTitre()
                    //                    ForEach(exemples) { eachPlante in
                    //                        NavigationLink(destination: PlantCard(plante: eachPlante))
                    //                        { PlantDetails(planteDetails: eachPlante) } }
                    
                    ForEach(resultats) { eachPlante in
                        NavigationLink(destination: PlantDetails(planteDetails: eachPlante))
                        { PlantCard(plante: eachPlante) }
                    }
                }
            }
            .onChange(of: recherche) { previews, new in
                resultats = new.isEmpty
                ? exemples
                : exemples.filter { $0.nom.localizedCaseInsensitiveContains(new) }
            }
        }
        .padding(.top, 40)
        .padding(.horizontal, 20)
        .padding(.bottom, 28)
        .stylePage(photo: "plantesCover", titrePage: "Choix d'espèces")
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
    //.searchable(text: $recherche)
}
#Preview {
    Ecran3Plantes()
}
