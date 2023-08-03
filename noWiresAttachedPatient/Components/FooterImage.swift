//
//  FooterImage.swift
//  noWiresAttachedPatient
//
//  Created by MJ Ajiduah on 7/27/23.
//

import SwiftUI

struct FooterImage: View {
    var body: some View {
        Image("nwaFooter")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(maxHeight: .infinity, alignment: .bottom)
            .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    FooterImage()
}
