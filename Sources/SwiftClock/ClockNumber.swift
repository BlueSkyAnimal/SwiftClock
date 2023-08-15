//
//  ClockNumber.swift
//  AnalogClock
//
//  Created by BlueSkyAnimal on 2023/08/15.
//

import SwiftUI
import MyLibrary

public struct ClockNumber: View {
    var number: Int
    var frame: CGFloat
    
    public init(number: Int, frame: CGFloat) {
        self.number = number
        self.frame = frame
    }
    
    public var body: some View {
        Text(number < 1 ? String(12) : String(number / 5))
            .font(.system(size: frame / 12))
            .frame(maxWidth: .infinity)
            .transform { content in
                if #available(iOS 16.1, macOS 13.0, *) {
                    content
                        .fontDesign(.rounded)
                        .fontWeight(.semibold)
                } else if #available(iOS 16.0, macOS 13.0, *) {
                    content
                        .font(.system(size: frame / 12, design: .rounded))
                        .fontWeight(.semibold)
                } else {
                    content
                        .font(.system(size: frame / 12, weight: .semibold, design: .rounded))
                }
            }
            .rotationEffect(.degrees(.init(number * -6) + 180))
            .offset(y: frame / 2 - frame / 8)
            .rotationEffect(.degrees(.init(number * 6)))
    }
}
