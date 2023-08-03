//
//  InputFieldView.swift
//  noWiresAttachedPatient
//
//  
//

import SwiftUI

// struct for pin or simple alphanumeric fields
struct PinFieldView: View {
    @Binding var dataOne: String
    var title: String
    
    var body: some View {
        ZStack {
            TextField(title ?? "Input", text: $dataOne)
                .keyboardType(.alphabet)
                .overlay(Rectangle()
                    .stroke(Color("PinColor1"), lineWidth: 0.5)
                    .frame(height: 1),
                         alignment: .bottom
                )
                .fontWeight(.semibold)
                .frame(width: 276, height: 32)
                .disableAutocorrection(true)
                .foregroundColor(Color("PinColor1"))
        }
    }
}

// struct for phone or simple numeric fields
struct NumFieldView: View {
    @Binding var dataTwo: String
    var title: String
    
    var body: some View {
        HStack {
            TextField(title ?? "Input", text: $dataTwo)
                .keyboardType(.phonePad)
                .overlay(Rectangle()
                    .stroke(Color("PinColor1"), lineWidth: 0.5)
                    .frame(height: 1),
                         alignment: .bottom
                )
                .fontWeight(.semibold)
                .frame(width: 276, height: 32)
                .foregroundColor(Color("PinColor1"))
            
            Image("InfoSeeker")
        }
    }
    
    
}

// struct for combined fields with title & subtitle for value name and format
struct PersonalInfoView: View {
    @Binding var valueInfo: String
    var title: String
    var stringFormat: String
    
    var body: some View {
        ZStack {
            //Text(title).fontWeight(.bold)
            //Text(stringFormat).fontWeight(.semibold)
            TextField(title + " " + stringFormat ?? "Input", text: $valueInfo)
                .keyboardType(.alphabet)
                .overlay(Rectangle()
                    .stroke(Color("PinColor1"), lineWidth: 0.5)
                    .frame(height: 1),
                         alignment: .bottom
                )
                .fontWeight(.black)
                .frame(width: 276, height: 32)
                .disableAutocorrection(true)
                .foregroundColor(Color("PinColor1"))
        }
    }
    
}

// struct for title and subtitle value name and format with info image
struct PersonalSeekerView: View {
    @Binding var valueInfoTwo: String
    var title: String
    var stringFormat: String
    
    var body: some View {
        HStack {
            TextField(title + " " + stringFormat ?? "Input", text: $valueInfoTwo)
                .keyboardType(.alphabet)
                .overlay(Rectangle()
                    .stroke(Color("PinColor1"), lineWidth: 0.5)
                    .frame(height: 1),
                         alignment: .bottom
                )
                .fontWeight(.black)
                .frame(width: 276, height: 32)
                .disableAutocorrection(true)
                .foregroundColor(Color("PinColor1"))
        }
        .overlay(
            HStack {
                Spacer().frame(width: 255)
                Image("InfoSeeker")
            }
        )
    }
        
}

// text heavy weight simple view for alphanumeric field
struct PersonalInfoTwoView: View {
    @Binding var valueInfoThree: String
    var title: String
    
    var body: some View {
        ZStack {

            TextField(title ?? "Input", text: $valueInfoThree)
                .keyboardType(.alphabet)
                .overlay(Rectangle()
                    .stroke(Color("PinColor1"), lineWidth: 0.5)
                    .frame(height: 1),
                         alignment: .bottom
                )
                .fontWeight(.black)
                .frame(width: 126, height: 32)
                .disableAutocorrection(true)
                .foregroundColor(Color("PinColor1"))
        }
    }
    
}

//// search field w/magnifying glass icon
struct SearchInfoIconView: View {
    @Binding var valueInfoFour: String
    var title: String
    var stringFormat: String
    
    var body: some View {
        HStack {
            TextField(title + " " + stringFormat ?? "Search", text: $valueInfoFour)
                .keyboardType(.alphabet)
                .padding(.horizontal, 40)
                .font(.system(size: 18))
                .frame(width: 327, height: 55, alignment: .center)
                .italic()
               .background(Color("SearchBarFill"), in: RoundedRectangle(cornerRadius: 29))
               .overlay(
                HStack {
                    Image("SearchIcon")
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 8)
                }
               )
        }
    }
    
}



#Preview {
    @State var dataOne: String = ""
    @State var dataTwo: String = ""
    @State var valueInfo: String = ""
    @State var valueInfoTwo: String = ""
    @State var valueInfoThree: String = ""
    @State var valueInfoFour: String = ""
    
    //return PinFieldView(dataOne: $dataOne, title: "PIN")
    //return NumFieldView(dataTwo: $dataTwo, title: "Recovery Phone Number")
    //return PersonalInfoView(valueInfo: $valueInfo, title: "Date of Birth", stringFormat: "MM/DD/YY")
    //return PersonalSeekerView(valueInfoTwo: $valueInfoTwo, title: "Sex", stringFormat: "M/F/Other")
    //return PersonalInfoTwoView(valueInfoThree: $valueInfoThree, title: "Height")
    return SearchInfoIconView(valueInfoFour: $valueInfoFour, title: "Location", stringFormat: "Zip Code/ City, State")
    
}
