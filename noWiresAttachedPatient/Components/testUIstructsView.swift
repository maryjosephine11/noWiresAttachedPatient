//
//  testUIstructsView.swift
//  noWiresAttachedPatient
//
//  Created by MJ Ajiduah on 7/31/23.
//

import SwiftUI

/**
 
 */
struct testUIstructsView: View {
    @State var generatePIDView = false
    //@State var showContinueButton = false
    var pid: String = "#SAMPLEPID00"
    
    var body: some View {
        GeometryReader { geo in
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
                    
                    if generatePIDView {
                        pidGeneratedView()
                        logInStringBtn
                    } else {
                        generatePidView(generatePIDView: $generatePIDView, width: geo.size.width)
                    }
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("AppForegroundColor1")).ignoresSafeArea(.all)
    }
}
extension testUIstructsView {
    var logInStringBtn: some View {
        ZStack(alignment: .custom){
            FooterImage()
            
            Button("Already Have an Account? Log In") {
            }
            .buttonStyle(LogInButtonStyle())
            .alignmentGuide(VerticalAlignment.custom)
            { d in d[.bottom] }
            
        }
        
    }
    
    
}


    
/**
 
 */

struct generatePidView: View {
    @Binding var generatePIDView : Bool
    
    let width: CGFloat
    
    var body: some View {
            VStack {
                //Spacer().frame(height: 5)
                
                Text("Sign Up")
                    .font(.system(size: 30))
                
                
                Spacer().frame(height: 50)
                
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
                
                Button("Generate Patient ID", action: {
                    //print("Button action")
                    generatePIDView = true
                })
                .buttonStyle(SecureLogButtonStyle())
            }
        }
}

/**
 */
struct pidGeneratedView: View {
    //self.generatePIDView = true
    //@Binding var generatePIDView : Bool
    var pid: String = "#SAMPLEPID00"
    
    var body: some View {
        VStack {
            Spacer().frame(height: 203)
            
            Text("Sign Up")
                .font(.system(size: 30))
            
            Spacer().frame(height: 45)
            
            Text("Present this number to your healthcare provider.")
                .font(.system(size: 22))
                .multilineTextAlignment(.center)
            
            Spacer().frame(height: 30)
            
            Text("YOUR PID:")
                .keyboardType(.alphabet)
                .fontWeight(.semibold)
                .frame(width: 276, height: 32, alignment: .leading)
                .foregroundColor(Color("PinColor1"))
            
            Spacer().frame(height: 30)
            
            // randomly generated patient number
            Text(pid)
                .font(.system(size: 22))
                .opacity(0.7)
            
            Spacer().frame(height: 50)
            
            Button("Continue", action: {
                print("Button action")
            })
            .buttonStyle(SecureLogButtonStyle())
        }
    }
}

/**
 */
        
        
 
#Preview {
    testUIstructsView()
}
