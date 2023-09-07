//
//  ClockExtension.swift
//
//
//  Created by BlueSkyAnimal on 2023/08/16.
//

import SwiftUI

public extension View {
    @ViewBuilder
    func clockFontDesign(_ design: Font.Design) -> some View {
        environment(\.clockFontDesign, design)
    }
    
    @ViewBuilder
    func clockFontWeight(_ weight: Font.Weight) -> some View {
        environment(\.clockFontWeight, weight)
    }
    
    @ViewBuilder
    func clockFaceStyle(_ style: Clock.FaceStyle) -> some View {
        environment(\.clockFaceStyle, style)
    }
    
    @ViewBuilder
    func clockDialStyle(_ style: Clock.DialStyle) -> some View {
        environment(\.clockDialStyle, style)
    }
    
    @ViewBuilder
    func clockHandStyle(_ style: Clock.HandStyle) -> some View {
        environment(\.clockHandStyle, style)
    }
    
    @ViewBuilder
    func clockDialVisibility(_ visibility: Visibility) -> some View {
        environment(\.clockDialVisibility, visibility)
    }
    
    @ViewBuilder
    func clockNumberVisibility(_ visibility: Visibility) -> some View {
        environment(\.clockNumberVisibility, visibility)
    }
}
