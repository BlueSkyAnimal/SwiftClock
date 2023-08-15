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
    
    init(fill: S, number: Int, frame: CGFloat, offset: CGFloat, inset: CGFloat, height: CGFloat) {
        self.fill = fill
        self.number = number
        self.frame = frame
        self.offset = offset
        self.inset = inset
        self.height = height
    }
    
    var body: some View {
        Capsule()
            .fill(fill)
            .frame(width: frame / 100, height: height)
            .offset(y: frame / 2 - offset - inset)
            .rotationEffect(.degrees(.init(number * 6)))
    }
}
