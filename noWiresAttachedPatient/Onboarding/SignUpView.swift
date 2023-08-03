//
//  SignUpView.swift
//  noWiresAttachedPatient
//
//
//

import SwiftUI

struct SignUpView: View {
    @EnvironmentObject private var router: Router
    
    var body: some View {
        VStack {
            
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
                    
                    Text("Present this number to your healthcare provider.")
                        .font(.system(size: 22))
                        .multilineTextAlignment(.center)
                    
                    Spacer().frame(height: 30)
                    
                    // align text with beginning of "present" text
                    Text("YOUR PID:")
                        .fontWeight(.semibold)
                        .frame(width: 276, height: 32, alignment: .leading)
                        .foregroundColor(Color("PinColor1"))
                    
                    Spacer().frame(height: 30)
                    
                    Text("CLICK BELOW")
                        .font(.system(size: 22))
                        .opacity(0.7)
                    
                    Spacer().frame(height: 50)
                    
                    Button("Generate Patient ID") {
                        withAnimation {
                            router.path.append(.signUpCont)
                        }
                    }
                    .buttonStyle(SecureLogButtonStyle())
                    
                    
                }
                
                
            }
            
            ZStack(alignment: .custom){
                FooterImage()
                
                Button("Already Have an Account? Log In") {
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
    SignUpView()
        .environmentObject(Router())
}

