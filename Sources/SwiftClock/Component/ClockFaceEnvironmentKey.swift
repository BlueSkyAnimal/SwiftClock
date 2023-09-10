//
//  ClockFaceEnvironmentKey.swift
//  
//
//  Created by BlueSkyAnimal on 2023/08/16.
//

import SwiftUI

public extension Clock {
    enum FaceStyle {
        case normal,
             stripe(_ colors: Array<Color>, angle: Angle = .zero, colorScheme: ColorScheme = .dark),
             image(_ data: Data?, scaledToFit: Bool = false)
    }
    
    enum DialStyle {
        case normal, circle, triangle, systemImage(String)
    }
    
    enum HandStyle {
        case normal, circle, triangle, systemImage(String)
    }
}

extension Clock {
    struct FaceStyleEnvironmentKey: EnvironmentKey {
        static var defaultValue: FaceStyle = .normal
    }
    
    struct DialStyleEnvironmentKey: EnvironmentKey {
        static var defaultValue: DialStyle = .normal
    }
    
    struct HandStyleEnvironmentKey: EnvironmentKey {
        static var defaultValue: HandStyle = .normal
    }
    
    struct DialVisibilityEnvironmentKey: EnvironmentKey {
        static var defaultValue: Visibility = .automatic
    }
    
    struct NumberVisibilityEnvironmentKey: EnvironmentKey {
        static var defaultValue: Visibility = .automatic
    }
}

extension EnvironmentValues {
    var clockFaceStyle: Clock.FaceStyle {
        get { self[Clock.FaceStyleEnvironmentKey.self] }
        set { self[Clock.FaceStyleEnvironmentKey.self] = newValue }
    }
    
    var clockDialStyle: Clock.DialStyle {
        get { self[Clock.DialStyleEnvironmentKey.self] }
        set { self[Clock.DialStyleEnvironmentKey.self] = newValue }
    }
    
    var clockHandStyle: Clock.HandStyle {
        get { self[Clock.HandStyleEnvironmentKey.self] }
        set { self[Clock.HandStyleEnvironmentKey.self] = newValue }
    }
    
    var clockDialVisibility: Visibility {
        get { self[Clock.DialVisibilityEnvironmentKey.self] }
        set { self[Clock.DialVisibilityEnvironmentKey.self] = newValue }
    }
    
    var clockNumberVisibility: Visibility {
        get { self[Clock.NumberVisibilityEnvironmentKey.self] }
        set { self[Clock.NumberVisibilityEnvironmentKey.self] = newValue }
    }
}
