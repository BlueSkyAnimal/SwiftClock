//
//  ClockDial.swift
//  AnalogClock
//
//  Created by BlueSkyAnimal on 2023/08/15.
//

import SwiftUI

struct ClockDial<S>: View where S: ShapeStyle {
    @Environment(\.clockDialStyle) private var style
    @Environment(\.clockDialVisibility) private var visibility
    
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
        Group {
            switch style {
                case .normal:
                    Capsule()
                        .fill(fill)
                        .frame(width: frame / 100, height: height)
                case .circle:
                    Circle()
                        .fill(fill)
                        .frame(width: frame / 50, height: frame / 50)
                        .frame(height: height, alignment: .bottom)
                case .triangle:
                    Triangle()
                        .fill(fill)
                        .frame(width: frame / 50, height: frame / 50)
                        .frame(height: height, alignment: .bottom)
                case .systemImage(let systemImage):
                    Image(systemName: systemImage)
                        .resizable()
                        .scaledToFit()
                        .symbolVariant(.fill)
                        .foregroundStyle(fill)
                        .frame(width: frame / 50, height: frame / 50)
                        .frame(height: height, alignment: .bottom)
            }
        }
        .offset(y: frame / 2 - offset - inset)
        .rotationEffect(.degrees(.init(number * 6)))
        .visibility(visibility)
    }
}
