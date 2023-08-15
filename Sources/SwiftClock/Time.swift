//
//  Time.swift
//  AnalogClock
//
//  Created by BlueSkyAnimal on 2023/08/14.
//

import SwiftUI

public struct Time {
    var value: Double
    
    public init(_ value: TimeInterval) {
        self.value = .init(value)
    }
    
    var hour: Double {
        value / 3600
    }
    
    var minute: Double {
        value / 60
    }
    
    var second: Double {
        value
    }
}
