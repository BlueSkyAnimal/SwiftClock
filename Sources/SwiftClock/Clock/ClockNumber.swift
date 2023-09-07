//
//  ClockNumber.swift
//  AnalogClock
//
//  Created by BlueSkyAnimal on 2023/08/15.
//

import SwiftUI

struct ClockNumber: View {
    @Environment(\.clockNumberVisibility) private var visibility
    @Environment(\.clockFontDesign) private var fontDesign
    @Environment(\.clockFontWeight) private var fontWeight
    
    var number: Int
    var frame: CGFloat
    
    init(number: Int, frame: CGFloat) {
        self.number = number
        self.frame = frame
    }
    
    var body: some View {
        Text(number < 1 ? String(12) : String(number / 5))
            .font(.system(size: frame / 12, weight: fontWeight, design: fontDesign))
            .frame(maxWidth: .infinity)
            .rotationEffect(.degrees(.init(number * -6) + 180))
            .offset(y: frame / 2 - frame / 8)
            .rotationEffect(.degrees(.init(number * 6)))
            .visibility(visibility)
    }
}
