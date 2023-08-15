//
//  AccentClockHand.swift
//  AnalogClock
//
//  Created by BlueSkyAnimal on 2023/08/15.
//

import SwiftUI

struct AccentClockHand: View {
    @Binding var date: Date?
    var frame: CGFloat
    var inset: CGFloat
    
    init(date: Binding<Date?>, frame: CGFloat, inset: CGFloat) {
        self._date = date
        self.frame = frame
        self.inset = inset
    }
    
    var body: some View {
        if let date {
            Capsule()
                .fill(.tint)
                .frame(width: frame / 120, height: frame / 2 + inset * 4)
                .offset(y: frame / 4 - inset * 3)
                .rotationEffect(.degrees(.init(date.time.second * 6)))
        }
    }
}
