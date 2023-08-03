//
//  SetNameView.swift
//  noWiresAttachedPatient
//
//  Created by MJ Ajiduah on 8/1/23.
//

import SwiftUI

struct SetNameView: View {
    @State var nameInput: String = ""
    
    var body: some View {
        VStack {
            
            ZStack {
                VStack {
                    HeaderTwoImage()
                }
                
                RoundedRectangle(cornerRadius: 50)
                    .fill(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 745)
                    .offset(y: 130)
                
                VStack{
                    Spacer().frame(height: 230)
                    
                    Text("Hello,")
                        .font(.system(size: 30))
                    
                    Spacer().frame(height: 45)
                    
                    Text("Please enter your preferred name.")
                        .font(.system(size: 22))
                        .multilineTextAlignment(.center)
                    
                    Spacer().frame(height: 40)
                    
                    PinFieldView(dataOne: $nameInput, title: "Preferred Name")
                    
                    Spacer().frame(height: 50)
                    
                    Button("Continue") {
                        withAnimation {
                            //router.path.append(.setPIN)
                        }
                    }
                    .buttonStyle(SecureLogButtonStyle())
                    
                    FooterImage()
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("AppForegroundColor1")).ignoresSafeArea(.all)
    }
        
}

#Preview {
    SetNameView()
}
