//
//  SetBioView.swift
//  noWiresAttachedPatient
//
//  
//

import SwiftUI
import Navigattie

struct SetBioView: NavigatableView {
    @Binding var nameInput: String
    @State var valueInfo: String = ""
    @State var valueInfoTwo: String = ""
    @State var height: String = ""
    @State var weight: String = ""
    
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
                
                VStack {
                    
                    Spacer().frame(height: 230)
                    
                    Text("Hello, \(nameInput)")
                        .font(.system(size: 30))
                    
                    Spacer().frame(height: 20)
                    
                    Text("Please enter the following...")
                        .font(.system(size: 22))
                        .multilineTextAlignment(.center)
                    
                    Spacer().frame(height: 60)
                    
                    PersonalInfoView(valueInfo: $valueInfo, title: "Date of Birth", stringFormat: "MM/DD/YY")
                    
                    Spacer().frame(height: 60)
                    
                    PersonalSeekerView(valueInfoTwo: $valueInfoTwo, title: "Sex", stringFormat: "M/F/Other")
                    
                    Spacer().frame(height: 60)
                    
                    HStack {
                        
                        PersonalInfoTwoView(valueInfoThree: $height, title: "Height")
                       
                        Spacer().frame(width: 34)
                        
                        PersonalInfoTwoView(valueInfoThree: $weight, title: "Weight")
                    }
                    
                    Spacer().frame(height: 75)
                    
                    Button("Continue") {
                        SetProviderView(nameInput: $nameInput).push(with: .horizontalSlide)
                    }
                    .buttonStyle(SecureLogButtonStyle())
                    
                    Spacer().frame(height: 10)
                    
                    
                    
                    
                }
                
                FooterTwoImage()
                    .offset(y: 95)
                
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("AppForegroundColor1")).ignoresSafeArea(.all)
    }
}

#Preview {
    SetBioView(nameInput: .constant("Sam"))
}
