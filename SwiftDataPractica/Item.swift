//
//  Item.swift
//  SwiftDataPractica
//
//  Created by German David Vertel Narvaez on 29/09/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
