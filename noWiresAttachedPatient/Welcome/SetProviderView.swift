//
//  SetProviderView.swift
//  noWiresAttachedPatient
//
// 
//

import SwiftUI

struct SetProviderView: View {
    @Binding var nameInput: String
    
    var body: some View {
        VStack {
            
            ZStack {
                
                RoundedRectangle(cornerRadius: 50)
                    .fill(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 1010)
                    .offset(y: 130)
                
                VStack {
                    Spacer().frame(height: 230)
                    
                    Text("Hello, \(nameInput)")
                        .font(.system(size: 30))
                    
                    Spacer().frame(height: 60)
                    
                    Text("Please search for your healthcare provider")
                        .font(.system(size: 22))
                        .multilineTextAlignment(.center)
                    
                    
                }
                
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("AppForegroundColor1")).ignoresSafeArea(.all)
    }
        
    
}

#Preview {
    SetProviderView(nameInput: .constant("Sam"))
}
