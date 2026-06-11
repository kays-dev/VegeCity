//
//  HeureMessage.swift
//  Vegecity
//
//  Created by Apprenant174 on 11/06/2026.
//

import SwiftUI

struct HeureMessage: View {
    var dateMessage : DateComponents
    
    func getToDateFormat(dateComp: DateComponents) -> String? {
        let thisDate = Calendar.current.date(from: dateComp)

        let newDate = thisDate?.formatted(Date.FormatStyle().weekday(.abbreviated))
        
        return newDate
    }
    
    var body: some View {
        HStack(spacing: 4){
            Text("\(getToDateFormat(dateComp: dateMessage) ?? "")")
            
            
            Text("\(dateMessage.hour!):\(dateMessage.minute!)")
        }
        .font((.custom("IosevkaCharonMono-Regular", size: 10, relativeTo: .caption2)))
        .opacity(0.8)
    }
}

#Preview {
    HeureMessage(dateMessage: groupe1.messages[1].dateEnvoi)
}
