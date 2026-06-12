//
//  PlantDetails.swift
//  Vegecity
//
//  Created by apprenant168 on 11/06/2026.
//

import SwiftUI

struct PlantDetails: View {
    
    
    var body: some View {

            VStack {
              
                ForEach(exemples) { PlantCard(plante: $0) }
                    
                
            }
            .stylePage(photo: "JardinierReveur", titrePage: "Details...")
        
        
        }
        
        }

#Preview {
    PlantDetails()
}
