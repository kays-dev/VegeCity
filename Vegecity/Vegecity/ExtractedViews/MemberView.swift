//
//  MemberView.swift
//  Vegecity
//
//  Created by Apprenant160 on 12/06/2026.
//

import SwiftUI

struct MemberView: View {
    
    let membre: [Membre] = membres
    
    var body: some View {
        
        ForEach(membres) { membre in
            Image(membre.image)
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50)
                .aspectRatio(1/1 , contentMode: .fill)
                .clipShape(.circle)
        }
    }
    
}

#Preview {
    MemberView()
}
