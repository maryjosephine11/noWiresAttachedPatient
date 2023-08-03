//
//  Router.swift
//  noWiresAttachedPatient
//
//
//

import SwiftUI
import NavigationBackport

enum Screens: NBScreen {
    case startScreen
    case signUp
    case signUpCont
    case setPIN
    case logIn
    case setName
    case setBio
    case setProvider
    case setMedication
}

final class Router: ObservableObject {
    
    @Published var path: [Screens] = []
    @State var nameInput: String = ""

    
    @ViewBuilder
    func route(to screen: Screens) -> some View {
        switch screen {
        case .startScreen:
            StartView()
        case .signUp:
            SignUpView()
        case .signUpCont:
            SignUpContView()
        case .setPIN:
            PinView()
        case .logIn:
            LogInView()
        case .setName:
            SetNameView()
        case .setBio:
            SetBioView(nameInput: $nameInput)
        case .setProvider:
            SetProviderView(nameInput: $nameInput)
        case .setMedication:
            SetUpMedicationView(nameInput: $nameInput)
        }
    }
}
