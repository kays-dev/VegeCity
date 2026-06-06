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
            }
            .frame(height: 200)
    }
}

#Preview {
    TitrePrincipal(photo: "defaultCover", titre: "Ceci est le titre de la page")
}
