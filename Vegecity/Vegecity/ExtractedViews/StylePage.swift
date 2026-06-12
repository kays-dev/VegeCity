//
//  StylePage.swift
//  Vegecity
//
//  Created by Apprenant174 on 07/06/2026.
//

import SwiftUI

struct StylePage: ViewModifier {
    var photo : String
    var titrePage : String
    
    func body(content: Content) -> some View {
        NavigationStack{
            ZStack(alignment: .top){
                TitrePrincipal(photo: photo, titre: titrePage)
                    .ignoresSafeArea()
                
                
                ScrollView(.vertical){
                    VStack(alignment: .leading, spacing: 32){
                        
                        content
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
}

extension View {
    func stylePage(photo : String, titrePage : String)  -> some View {
        modifier(StylePage(photo: photo, titrePage: titrePage))
    }
}

struct ExemplePage: View {
    var body: some View {
        VStack{
            CarteGroupes(titre: "Potager aux Oiseaux", arrondissment: "3e", membres: "@PlanetteVerte", dernierMessage: "Parfait. Et on en profite pour repiquer les jeunes plants dans la parcelle A, elle est prête depuis mardi dernier 🌱")
        }
        .stylePage(photo: "defaultCover", titrePage: "Ceci est le titre de la page")
        
    }
}

#Preview {
    ExemplePage()
}
