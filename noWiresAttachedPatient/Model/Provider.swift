//
//  Provider.swift
//  noWiresAttachedPatient
//
//
//

import Foundation
import SwiftUI

struct Provider: Hashable, Codable, Identifiable{
    var id: Int
    var name: String
    var position: String
    var bio: String
    var location: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
