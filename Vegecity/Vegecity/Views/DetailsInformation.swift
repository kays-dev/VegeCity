//
//  DetailsInformation.swift
//  Vegecity
//
//  Created by Apprenant174 on 13/06/2026.
//

import SwiftUI

struct DetailsInformation: View {
    @Environment(\.openURL) private var openURL
    
    @Binding var information: Information
    
    var body: some View {
        ZStack{
            Color.vcPrimary
                .ignoresSafeArea()
            
            ScrollView{
                VStack(spacing: 24){
                    //Titres
                    VStack(alignment: .leading, spacing: 12){
                        VStack(alignment: .leading){
                            Text(information.titre)
                                .grandTitre()
                            
                            Text(information.source)
                                .sousTitre()
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    
                    //Wrap des badges de
                    WrappedHStack(horizontalSpacing: 8, verticalSpacing: 12){
                        ForEach(information.problematiques){ theme in
                            HStack(alignment: .center, spacing: 4){
                                Image(systemName: theme.icone2).symbolVariant(.fill)
                                Text(theme.nom)
                            }
                            .padding(.horizontal, 8)
                            .padding(.vertical, 4)
                            .background{
                                Capsule()
                                    .stroke()
                                    .frame(height: 30)
                            }
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundStyle(.vcCardIcon)
                    .carteBadge()
                    
                    
                    Text("""
                \(information.description)
                """)
                    .carteDescription()
                }
                .padding()
                
            }
            .toolbar{
                if let lienRessource = URL(string: information.link) {
                    ToolbarItem(placement: .topBarTrailing) {
                        
                        Button{
                            openURL(lienRessource, prefersInApp: true)
                        } label: {
                            Image(systemName: "link")
                        }
                    }
                    
                    
                    ToolbarItem(placement: .topBarTrailing) {
                        ShareLink(item: lienRessource,
                                  subject: Text(information.transferSubject),
                                  message: Text(information.transferMessage))
                    }
                } else {
                    ToolbarItem(placement: .topBarTrailing) {
                        ShareLink(item: """
                            Titre - 
                            \(information.titre)
                            
                            Références - 
                            \(information.source)
                            
                            Description - 
                            \(information.resume)
                            
                            """,
                                  subject: Text(information.transferSubject),
                                  message: Text(information.transferMessage),
                                  preview: SharePreview("Partagez vos références !", image: Image("VegecityIcon")))
                    }
                }
                
            }
            .scrollIndicators(.hidden)
            .navigationTitle(information.type.nom)
            .toolbar(.hidden, for:  .tabBar)
        }
    }
}

#Preview {
    struct PreviewInfo : View {
        @State private var info = informations[0]
        
        var body : some View {
            DetailsInformation(information: $info)
        }
    }
    
    return PreviewInfo()
}
