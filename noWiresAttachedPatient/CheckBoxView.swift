//
//  CheckBoxView.swift
//  noWiresAttachedPatient
//
//
//

import SwiftUI

struct CheckBoxView: View {
    @Binding var checked: Bool
    @Binding var trimVal: CGFloat
    @Binding var width: CGFloat
    @Binding var height: CGFloat
    
    var animatableData: CGFloat {
        get {trimVal}
        set { trimVal = newValue }
    }
    
    var body: some View {
        ZStack {
            Circle()
                .trim(from: 0, to: trimVal)
                .stroke(style: StrokeStyle(lineWidth: 2))
                .frame(width: width, height: height)
                .foregroundColor(Color("CheckColor1"))
                .overlay(
                    Circle()
                        .fill(Color.white)
                        .frame(width: width - 4, height: height - 4)
                )
                .overlay(
                    Circle()
                        .fill(self.checked ? Color("SelectionDotColor") : Color.white)
                        .frame(width: width - 6, height: height - 6)
                
                )
            
            
        }
    }
}

#Preview {
    CheckBoxView(checked: .constant(false), trimVal: .constant(1), width: .constant(16), height: .constant(16))
}
