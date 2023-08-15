//
//  SolidClockHand.swift
//  AnalogClock
//
//  Created by BlueSkyAnimal on 2023/08/15.
//

import SwiftUI

public struct SolidClockHand: View {
    var hand: HandKind
    @Binding var date: Date?
    var height: CGFloat
    var frame: CGFloat
    var inset: CGFloat
    
    public init(hand: HandKind, date: Binding<Date?>, height: CGFloat, frame: CGFloat, inset: CGFloat) {
        self.hand = hand
        self._date = date
        self.height = height
        self.frame = frame
        self.inset = inset
    }
    
    public var body: some View {
        if let date {
            var rotation: Angle {
                switch hand {
                    case .hour:
                        return .degrees(.init(date.time.hour * 30))
                    case .minute:
                        return .degrees(.init(date.time.minute * 6))
                }
            }
            
            Group {
                Capsule()
                    .fill(Color(.solid))
                    .frame(width: frame / 30, height: height - inset * 5)
                    .offset(y: (height + inset * 2) / 2)
                Capsule()
                    .fill(Color(.solid))
                    .frame(width: frame / 60, height: height - inset * 2)
                    .offset(y: (height - inset * 2) / 2)
            }
            .rotationEffect(rotation)
            .shadow(color: Color(.solid).opacity(0.2), radius: inset)
        }
    }
}

public extension SolidClockHand {
    enum HandKind: CaseIterable, Hashable {
        case hour, minute
    }
}
