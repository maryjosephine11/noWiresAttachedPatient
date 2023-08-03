//
//  SetProviderView.swift
//  noWiresAttachedPatient
//
// 
//

import SwiftUI

struct SetProviderView: View {
    @Binding var nameInput: String
    
    @State var checked: Bool = false
    @State var trimVal: CGFloat = 1
    @State var width: CGFloat = 16
    @State var height: CGFloat = 16
    
    @State var valueInfoFour: String = ""
    

    var body: some View {
        VStack {
            
            ZStack {
                
                RoundedRectangle(cornerRadius: 50)
                    .fill(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 1010)
                    .offset(y: 130)
                
                VStack {
                Spacer().frame(height: 0.01)
                        .edgesIgnoringSafeArea(.top)
                        //.ignoresSafeArea()
                    
                    Text("Hello, \(nameInput)")
                        .font(.system(size: 30))
                    
                    Spacer().frame(height: 10)
                    
                    Text("Please search for your healthcare provider     ")
                        .font(.system(size: 22))
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: 390,  alignment: .top)
                        .opacity(0.7)
                    
                    SearchInfoIconView(valueInfoFour: $valueInfoFour, title: "Location", stringFormat: "Zip Code/ City, State")
                    
                    Spacer().frame(height: 10)
                    
                    Text("Healthcare Providers")
                        .font(.system(size: 24))
                        .fontWeight(.semibold)
                        .frame(width: 327, alignment: .leading)
                    HStack {
                        Text("Showing results from 'location'")
                            .font(.system(size: 14))
                            .lineLimit(1)
                            .frame(width: 215, alignment: .leading)
                            .foregroundStyle(Color("ShowingResColor"))
                        
                        Spacer().frame(width: 52)
                        
                        Text("View All")
                            .font(.system(size: 14))
                            .lineLimit(1)
                            .frame(width: 60, alignment: .leading)
                            .foregroundStyle(Color("LocationColor1"))
                        
                        
                    }
                    
                    Spacer().frame(height: 5)
                    
                    ProviderRow(provider: providers[0], checked: $checked, trimVal: $trimVal, width: $width, height: $height)
                    
                    ProviderRow(provider: providers[1], checked: $checked, trimVal: $trimVal, width: $width, height: $height)
                    
                    Spacer().frame(height: 10)
                    
                    Button {
                        withAnimation {
                            //router.path.append(.setPIN)
                        }
                    } label: {
                        VStack {
                            Spacer().frame(height: 18)
                            
                            Text("Continue")
                                .font(.system(size: 22))
                            
                            Text("Select None to Skip")
                                .font(.system(size: 14))
                                .italic()
                                .fontWeight(.regular)
                            
                        }
                        
                    }
                    .buttonStyle(SecureLogButtonStyle())
                    
                    //FooterTwoImage()
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
