//
//  BasePage.swift
//  Vegecity
//
//  Created by Apprenant174 on 07/06/2026.
//

import SwiftUI

struct BasePage<Content: View>: View {
    
    var photo : String
    var titrePage : String
    
    @ViewBuilder var content: () -> Content

    var body: some View {
        ZStack(alignment: .top){
            TitrePrincipal(photo: photo, titre: titrePage)
                .ignoresSafeArea()
            
                ScrollView(.vertical){
                    VStack(alignment: .leading, spacing: 32){
                        
                        content()
                    }
                    .padding(.top, 40)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 28)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .mask(RoundedRectangle(cornerRadius: 36))
                .background{
                    UnevenRoundedRectangle(topLeadingRadius: 36, topTrailingRadius: 36)
                        .fill(.vcPrimary)
                }
                .padding(.top, 16*16)
                .ignoresSafeArea()
            }
        }
}

#Preview {
    BasePage(photo: "defaultCover", titrePage: "Ceci est le titre de la page"){
        CarteGroupes(titre: "Potager aux Oiseaux", arrondissment: "3e", membres: "@PlanetteVerte", dernierMessage: "Parfait. Et on en profite pour repiquer les jeunes plants dans la parcelle A, elle est prête depuis mardi dernier 🌱")
    }
}
