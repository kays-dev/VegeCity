//
//  MemberView.swift
//  Vegecity
//
//  Created by Apprenant160 on 12/06/2026.
//

import SwiftUI

struct MemberView: View {
    var body: some View {
        
        Image(.composteurDu19)
            .resizable()
            .scaledToFill()
            .frame(width: 70, height: 70)
            .aspectRatio(1/1 , contentMode: .fill)
            .clipShape(.circle)
    }
}

#Preview {
    MemberView()
}
