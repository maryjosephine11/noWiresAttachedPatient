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
}

final class Router: ObservableObject {
    
    @Published var path: [Screens] = []
    
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
        }
    }
}
