//
//  SetUpMedicationView.swift
//  noWiresAttachedPatient
//
//  
//

import SwiftUI
import Navigattie

struct SetUpMedicationView: NavigatableView {
    @Binding var nameInput: String
    
    @State var valueInfoFour: String = ""
    
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
                    
                    Text("Please list any prescribed medications")
                        .font(.system(size: 22))
                        .multilineTextAlignment(.center)
                    
                    Spacer().frame(height: 20)
                    
                    SearchInfoIconView(valueInfoFour: $valueInfoFour, title: "Search Name", stringFormat: "")
                    
                    ZStack {
                        
                        RoundedRectangle(cornerRadius: 16)
                            .fill(Color("MedicineColor1"))
                            .frame(width: 175)
                            .frame(height: 59)
                            .offset(y: 30)
                        
                        VStack {
                            
                            Spacer().frame(height: 55)
                            
                            HStack {
                                Spacer().frame(width: 30)
                                
                                Text("Medicine #1 - 500 mg  ")
                                    .font(.system(size: 15))
                                    .lineLimit(2)
                                    .frame(width: 85, alignment: .leading)
                                    .foregroundStyle(Color("MedicineNameColor1"))
                            }
                            .overlay(
                                HStack {
                                    
                                    Image("Capsule")
                                        .offset(x: -60)
                                }
                                )
                            .overlay(
                                HStack {
                                    
                                    Image(systemName: "xmark")
                                        .opacity(0.44)
                                        .offset(x: 110)
                                }
                                )
                        
                        }
                    }
                    
                    Spacer().frame(height: 120)
                    
                    Button("Continue") {
                        /// TO - DO: add action to complete new session screens
                    }
                    .buttonStyle(SecureLogButtonStyle())
                    
                }
                
                FooterTwoImage()
                    .offset(y: 85)
                
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("AppForegroundColor1")).ignoresSafeArea(.all)
    }
}

#Preview {
    SetUpMedicationView(nameInput: .constant("Sam"))
}
