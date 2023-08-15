//
//  ClockDial.swift
//  AnalogClock
//
//  Created by BlueSkyAnimal on 2023/08/15.
//

import SwiftUI

struct ClockDial<S>: View where S: ShapeStyle {
    var fill: S
    var number: Int
    var frame: CGFloat
    var offset: CGFloat
    var inset: CGFloat
    var height: CGFloat
    
    var body: some View {
        Capsule()
            .fill(fill)
            .frame(width: frame / 100, height: height)
            .offset(y: frame / 2 - offset - inset)
            .rotationEffect(.degrees(.init(number * 6)))
    }
}
