//
//  noWiresAttachedPatientApp.swift
//  noWiresAttachedPatient
//
//  
//

import SwiftUI
import Navigattie

@main
struct noWiresAttachedPatientApp: App {
    var body: some Scene {
        WindowGroup {
            StartView()
                .implementNavigationView(config: nil)
        }
    }
}
