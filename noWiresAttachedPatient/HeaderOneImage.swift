//
//  HeaderOneImage.swift
//  noWiresAttachedPatient
//
//  Created by MJ Ajiduah on 7/27/23.
//

import SwiftUI

struct HeaderOneImage: View {
    var body: some View {
        Image("nwaFooter")
            .resizable()
            .scaledToFit()
            .frame(maxHeight: .infinity, alignment: .top)
            .edgesIgnoringSafeArea(.top)
    }
}

#Preview {
    HeaderOneImage()
}
