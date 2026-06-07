//
//  TitrePrincipal.swift
//  Vegecity
//
//  Created by Apprenant174 on 07/06/2026.
//

import SwiftUI

struct TitrePrincipal: View {
    var photo : String
    var titre : String
    
    var body: some View {
        Image(photo)
            .resizable()
            .scaledToFill()
            .overlay {
                    Rectangle().fill(.vcGreenFilter)
                    Rectangle().fill(.vcDarkerFilter)
                    
                    Text(titre)
                        .font(.title)
                        .bold()
                        .foregroundStyle(.vcPrimary)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 80)

            }
            .frame(minWidth: 0,
                   maxWidth: .infinity,
                   minHeight: 0,
                   maxHeight: .infinity
            )
            .aspectRatio(4/3 , contentMode: .fit)
    }
}

#Preview {
    TitrePrincipal(photo: "defaultCover", titre: "Ceci est le titre de la page")
}
