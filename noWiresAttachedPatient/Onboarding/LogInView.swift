//
//  LogInView.swift
//  noWiresAttachedPatient
//
//  Created by MJ Ajiduah on 7/27/23.
//

import SwiftUI
import Navigattie

struct SecureLogButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(width: 316)
            .frame(height: 72)
            .foregroundColor(Color.white)
            .font(.system(size: 22))
            .fontWeight(.semibold)
            .background(Color("ButtonColor2"))
            .cornerRadius(20)
            .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 1)
            )
            .opacity(configuration.isPressed ? 0.5 : 1)
    }
}

struct ForgotPinButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(Color.blue)
            .font(.system(size: 15))
            .fontWeight(.semibold)
            .overlay(Rectangle()
                .fill(.blue)
                .frame(height: 1),
                     alignment: .bottom
            )
            .opacity(configuration.isPressed ? 0.5 : 1)
    }
}

struct LogInView: NavigatableView {
    @State private var pinInput: String = ""
    
    var body: some View {
        VStack {
            
            ZStack {
                
                VStack {
                    
                    HeaderOneImage()
                }
                
                RoundedRectangle(cornerRadius: 40)
                    .fill(.white)
                    .frame(width: 477, height: 450)
                    .position(x:200, y: 360)
                
                VStack {
                    
                    Spacer().frame(height: 203)
                    
                    Text("Sign In")
                        .font(.system(size: 30))
                    
                    Spacer().frame(height: 45)
                    
                    Text("Sign in now to monitor your heart.")
                        .font(.system(size: 22))
                        .multilineTextAlignment(.center)
                    
                    Spacer().frame(height: 40)
                    
                    PinFieldView(dataOne: $pinInput, title: "PIN")

                    ZStack {
                        
                        Button("Forgot Pin", action: {
                            print("Button action")
                        })
                        .buttonStyle(ForgotPinButtonStyle())
                        .frame(maxWidth: 280,
                               maxHeight: .infinity,
                               alignment: .bottomTrailing)
                    }
                    
                    Spacer().frame(height: 70)
                    
                    Button("Secure Login"){
                        /// TO - DO: add action to navigate to profile home-page
                    }
                    .buttonStyle(SecureLogButtonStyle())
                    
                    
                }
                    
                
            }
            
            ZStack(alignment: .custom){
                FooterImage()
                
                Button("Don't Have an Account? Sign Up"){
                    SignUpView().push(with: .horizontalSlide)
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
    LogInView()
}
