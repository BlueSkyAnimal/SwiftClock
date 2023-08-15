//
//  ClockRotor.swift
//  AnalogClock
//
//  Created by BlueSkyAnimal on 2023/08/15.
//

import SwiftUI

public struct ClockRotor: View {
    var frame: CGFloat
    
    public init(frame: CGFloat) {
        self.frame = frame
    }
    
    public var body: some View {
        Circle()
            .fill(Color(.solid))
            .frame(width: frame / (60 / 3), height: frame / (60 / 3))
            .zIndex(-1)
        Circle()
            .fill(.tint)
            .frame(width: frame / (60 / 2), height: frame / (60 / 2))
        Circle()
            .fill(.background)
            .frame(width: frame / 60, height: frame / 60)
    }
}
