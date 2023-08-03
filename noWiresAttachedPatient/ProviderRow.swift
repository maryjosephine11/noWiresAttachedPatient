//
//  ProviderRow.swift
//  noWiresAttachedPatient
//
//
//

import SwiftUI

struct ProviderRow: View {
    var provider: Provider
    
    @Binding var checked: Bool
    @Binding var trimVal: CGFloat
    @Binding var width: CGFloat
    @Binding var height: CGFloat
    
    @EnvironmentObject private var router: Router
    
    var body: some View {
        VStack (spacing: -250){
            
            HStack {
                Text(provider.location)
                    .foregroundStyle(Color("LocationColor1"))
                    .font(.system(size: 14))
                    .frame(width: 327, alignment: .topLeading)
                
                //Spacer().frame(width: 11)
            }
            
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color("ProviderCapsuleColor"))
                    .frame(width: 327)
                    .frame(height: 160)
                    .offset(y: 130)
                
                VStack {
                    //Spacer().frame(height: 230)
                    HStack {
                        Spacer().frame(width: 25)
                        ZStack{
                            UnevenRoundedRectangle(topLeadingRadius: 16, bottomLeadingRadius: 16)
                                .fill(Color("PicBkgd"))
                                .frame(width: 134)
                                .frame(height: 160)
                                .offset(y: 130)
                            
                            VStack {
                                Spacer().frame(height: 280)
                                
                                provider.image
                                    .resizable()
                                    .frame(width: 134, height: 142, alignment: .leading)
                                    .cornerRadius(20)
                            }
                            
                        }
                        
                        Spacer().frame(width: 13)
                        
                        VStack(alignment: .leading) {
                            Spacer().frame(height: 230)
                            
                            HStack {
                                Spacer().frame(width: 160)
                                
                                CheckBoxView(checked: $checked, trimVal: $trimVal, width: $width, height: $height)
                                    .onTapGesture {
                                        self.width = 16
                                        self.trimVal = 1
                                        
                                        if !self.checked {
                                            self.checked.toggle()
                                        } else {
                                            self.checked.toggle()
                                        }
                                    }
                            }
                                //.frame(alignment: .topTrailing)
                            
                            HStack {
                                Text(provider.name)
                                    .lineLimit(1)
                                    .font(.system(size: 20))
                                    .frame(maxWidth: .infinity, alignment: .topLeading)
                            }
                            
                            Spacer().frame(height: 5)
                            
                            HStack {
                                Text(provider.position)
                                    .lineLimit(1)
                                    .font(.system(size: 10))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            
                            Spacer().frame(height: 5)
                            
                            HStack {
                                Text(provider.bio)
                                    .font(.system(size: 10))
                                    .foregroundStyle(Color("BioTextColor"))
                                    .multilineTextAlignment(.leading)
                                    .frame(maxWidth: 190, alignment: .leading)
                            }
                            
                            
                            
                            
                        }
                        //.frame(width: 40, alignment: .leading)
                        
                        
                        
                    }
                }
            }
        }
    }
}

#Preview {
    ProviderRow(provider: providers[1], checked: .constant(true), trimVal: .constant(1), width: .constant(16), height: .constant(16))
}
