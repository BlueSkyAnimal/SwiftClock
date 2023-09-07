//
//  ClockRotor.swift
//  AnalogClock
//
//  Created by BlueSkyAnimal on 2023/08/15.
//

import SwiftUI

struct ClockRotor: View {
    var frame: CGFloat
    
    init(frame: CGFloat) {
        self.frame = frame
    }
    
    var body: some View {
        Circle()
            .fill(Color(.foreground))
            .frame(width: frame / (60 / 3), height: frame / (60 / 3))
            .zIndex(-1)
        Circle()
            .fill(.tint)
            .frame(width: frame / (60 / 2), height: frame / (60 / 2))
        Circle()
            .fill(Color(.background))
            .frame(width: frame / 60, height: frame / 60)
    }
}
