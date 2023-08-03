//
//  SessionManager.swift
//  noWiresAttachedPatient
//
//  inspired by Tunde Adegoroye's SwiftUI-sessions series
//

import Foundation

final class SessionManager: ObservableObject {
    
    enum UsrDefaultKeys {
        static let seenOnboarding = "seenOnboarding"
        static let completedSignUpProcess = "completedSignUpProcess"
    }
    
    enum UsrCurrentState {
        case startSession
        case loggedOut
        case signUp
        case signUpCont
        case setPin
    }
    
    @Published private(set) var usrCurrentState: UsrCurrentState?
    
    func signIn() {
        usrCurrentState = .startSession
    }
    
    func signOut() {
        usrCurrentState = .loggedOut
    }
    
    func completeRegistration() {
        //usrCurrentState = .signUp
    }
    
    func configureUsrCurrentState() {
        
        /**
         - If the user closes the app from the set pin screen > Resume the app from the set pin screen
         - If the user closes the app from one of the sign up screens  > Resume the app from the sign up screens
         - If the user closes the app after viewing onboarding and sign up phase > Resume the app from the log in screen
         */
        
        let completedSignUpFlow = UserDefaults.standard.bool(forKey: UsrDefaultKeys.completedSignUpProcess)
        let completedOnboarding = UserDefaults.standard.bool(forKey: UsrDefaultKeys.seenOnboarding)
        
        if completedSignUpFlow {
            usrCurrentState = .loggedOut
        } else {
            usrCurrentState = completedOnboarding ? .setPin : .signUpCont
        }
        
                
    }
    
    
}
