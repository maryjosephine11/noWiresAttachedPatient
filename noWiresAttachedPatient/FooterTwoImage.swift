//
//  FooterTwoImage.swift
//  noWiresAttachedPatient
//
//  Created by MJ Ajiduah on 8/1/23.
//

import SwiftUI

struct FooterTwoImage: View {
    var body: some View {
            
        Image("nwaFooter")
            .resizable()
            .aspectRatio(2, contentMode: .fit)
            .frame(minHeight: 80, maxHeight: .infinity, alignment: .bottom)
            .edgesIgnoringSafeArea(.bottom)
            .offset(y: 10)
            //.safeAreaInset(edge: .bottom, content: <#() -> _#>)
        
        //Spacer().frame(height: 0)
    }
        
}

#Preview {
    FooterTwoImage()
}
