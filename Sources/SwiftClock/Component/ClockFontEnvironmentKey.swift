//
//  ClockFontEnvironmentKey.swift
//
//
//  Created by BlueSkyAnimal on 2023/08/16.
//

import SwiftUI

extension Clock {
    struct FontDesignEnvironmentKey: EnvironmentKey {
        static var defaultValue: Font.Design = .rounded
    }
    
    struct FontWeightEnvironmentKey: EnvironmentKey {
        static var defaultValue: Font.Weight = .semibold
    }
}

extension EnvironmentValues {
    var clockFontDesign: Font.Design {
        get { self[Clock.FontDesignEnvironmentKey.self] }
        set { self[Clock.FontDesignEnvironmentKey.self] = newValue }
    }
    
    var clockFontWeight: Font.Weight {
        get { self[Clock.FontWeightEnvironmentKey.self] }
        set { self[Clock.FontWeightEnvironmentKey.self] = newValue }
    }
}
