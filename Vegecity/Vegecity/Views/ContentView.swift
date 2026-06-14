//
//  ContentView.swift
//  Vegecity
//
//  Created by Apprenant174 on 03/06/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Activités", systemImage: "binoculars.fill") {
                CardListView()
            }
            Tab("Groupes", systemImage: "bubble.left.and.text.bubble.right.fill") {
                EcranGroupes()
            }
            Tab("Plantes", systemImage: "tree") {
                Ecran3Plantes()
            }
            Tab("Infos", systemImage: "info.circle.fill") {
                EcranInformations()
            }
        }
    }
}

#Preview {
    ContentView()
}
