//
//  Clock.swift
//  SwiftClock
//
//  Created by BlueSkyAnimal on 2023/08/14.
//

import SwiftUI

public struct Clock: View {
    @Environment(\.clockFaceStyle) private var faceStyle
    
    @Binding var date: Date?
    
    public init(date: Binding<Date?>) {
        self._date = date
    }
    
    public var body: some View {
        GeometryReader { geometry in
            
            let frame = min(geometry.size.width, geometry.size.height)
            
            var height: CGFloat {
                return frame / 30
            }
            
            var inset: CGFloat {
                return height / 2
            }
            
            var offset: CGFloat {
                return height / 2
            }
            
            ZStack {
                
                ForEach(0..<60) { number in
                    
                    // MARK: - Dial
                    if number.isMultiple(of: 5) {
                        ClockDial(fill: Color(.foreground), number: number, frame: frame, offset: offset, inset: inset, height: height)
                    } else {
                        ClockDial(fill: Color(.foreground).opacity(0.2), number: number, frame: frame, offset: offset, inset: inset, height: height)
                    }
                    
                    // MARK: - Dial Number
                    if number.isMultiple(of: 5) {
                        ClockNumber(number: number, frame: frame)
                    }
                }
                
                // MARK: - Hour Hand
                SolidClockHand(hand: .hour, date: $date, height: frame / 3, frame: frame, inset: inset)
                
                // MARK: - Minutes Hand
                SolidClockHand(hand: .minute, date: $date, height: frame / 2, frame: frame, inset: inset)
                
                // MARK: - Second Hand
                AccentClockHand(date: $date, frame: frame, inset: inset)
                
                // MARK: - Central Rotor
                ClockRotor(frame: frame)
            }
            .rotationEffect(.degrees(180))
            .frame(width: frame, height: frame)
            .background(faceStyle, in: .circle)
            .frame(width: geometry.size.width, height: geometry.size.height)
        }
        .drawingGroup()
    }
}
