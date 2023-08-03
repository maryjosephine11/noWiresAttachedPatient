//
//  PinView.swift
//  noWiresAttachedPatient
//
//
//

import SwiftUI

struct PinView: View {
    @State private var startedAction: Int? = 0
    @State private var logInAction: Int? = 0
    @State private var pinInput: String = ""
    @State private var phoneInput: String = ""
    
    @EnvironmentObject private var router: Router

    
    var body: some View {
        VStack {
            //HeaderOneImage()
            ZStack {
                VStack{
                    HeaderOneImage()
                }
                RoundedRectangle(cornerRadius: 40)
                    .fill(.white)
                    .frame(width: 477, height: 450)
                    .position(x:200, y: 360)
                
                VStack {
                    Spacer().frame(height: 203)
                    
                    Text("Sign Up")
                        .font(.system(size: 30))
                    
                    Spacer().frame(height: 45)
                    
                    Text("Please set a pin number for log-in.")
                        .font(.system(size: 22))
                        .multilineTextAlignment(.center)
                    
                    Spacer().frame(height: 40)
                    
                    PinFieldView(dataOne: $pinInput, title: "PIN")
                    
                    NumFieldView(dataTwo: $phoneInput, title: "Recovery Phone Number")
                    
                    Spacer().frame(height: 70)
                    
                    Button("Secure Login"){
                        
                    }
                    .buttonStyle(SecureLogButtonStyle())
                    
                    
                }
                    
                
            }
            
            ZStack(alignment: .custom){
                FooterImage()
                
                
                Button("Already Have an Account? Log In"){
                    withAnimation {
                        router.path.append(.logIn)
                    }
                }
                .buttonStyle(LogInButtonStyle())
                .alignmentGuide(VerticalAlignment.custom)
                { d in d[.bottom] }
                
                
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("AppForegroundColor1")).ignoresSafeArea(.all)
       
    }
}

#Preview {
    PinView()
}
