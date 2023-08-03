//
//  HeaderTwoImage.swift
//  noWiresAttachedPatient
//
//  
//

import SwiftUI

struct HeaderTwoImage: View {
    var body: some View {
        Image("NWA 1")
            .resizable()
            .scaledToFit()
            .frame(maxHeight: .infinity, alignment: .top)
            .edgesIgnoringSafeArea(.top)
            .padding([.top], -100)
        
    }
}

#Preview {
    HeaderTwoImage()
}
