//
//  SetBioView.swift
//  noWiresAttachedPatient
//
//  
//

import SwiftUI

struct SetBioView: View {
    @Binding var nameInput: String
    @State var valueInfo: String = ""
    @State var valueInfoTwo: String = ""
    @State var height: String = ""
    @State var weight: String = ""
    
    var body: some View {
        VStack{
            
            ZStack {
                VStack {
                    HeaderTwoImage()
                }
                
                RoundedRectangle(cornerRadius: 50)
                    .fill(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 745)
                    .offset(y: 130)
                
                VStack {
                    Spacer().frame(height: 230)
                    
                    Text("Hello, \(nameInput)")
                        .font(.system(size: 30))
                    
                    Spacer().frame(height: 60)
                    
                    Text("Please enter the following...")
                        .font(.system(size: 22))
                        .multilineTextAlignment(.center)
                    
                    Spacer().frame(height: 30)
                    
                    PersonalInfoView(valueInfo: $valueInfo, title: "Date of Birth", stringFormat: "MM/DD/YY")
                    
                    Spacer().frame(height: 40)
                    
                    PersonalSeekerView(valueInfoTwo: $valueInfoTwo, title: "Sex", stringFormat: "M/F/Other")
                    
                    Spacer().frame(height: 40)
                    
                    HStack {
                        PersonalInfoTwoView(valueInfoThree: $height, title: "Height")
                       
                        Spacer().frame(width: 34)
                        
                        PersonalInfoTwoView(valueInfoThree: $weight, title: "Weight")
                    }
                    
                    Spacer().frame(height: 70)
                    
                    Button("Continue") {
                        withAnimation {
                            //router.path.append(.setPIN)
                        }
                    }
                    .buttonStyle(SecureLogButtonStyle())
                    
                    FooterTwoImage()
                }
                
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("AppForegroundColor1")).ignoresSafeArea(.all)
    }
}

#Preview {
    //@State var : String = ""
    
    SetBioView(nameInput: .constant("Sam"))
}
