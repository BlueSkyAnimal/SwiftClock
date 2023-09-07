//
//  AccentClockHand.swift
//  AnalogClock
//
//  Created by BlueSkyAnimal on 2023/08/15.
//

import SwiftUI

struct AccentClockHand: View {
    @Environment(\.clockHandStyle) private var style
    
    @Binding var date: Date?
    var frame: CGFloat
    var inset: CGFloat
    
    init(date: Binding<Date?>, frame: CGFloat, inset: CGFloat) {
        self._date = date
        self.frame = frame
        self.inset = inset
    }
    
    var length: CGFloat {
        if style != nil {
            frame / 2 + inset * 4 - frame / 30
        } else {
            frame / 2 + inset * 4
        }
    }
    
    var body: some View {
        if let date {
            ZStack(alignment: .bottom) {
                Capsule()
                    .fill(.tint)
                    .frame(width: frame / 120, height: length)
                    .frame(width: frame / 120, height: frame / 2 + inset * 4)
                
                if let style {
                    switch style {
                        case .normal:
                            EmptyView()
                        case .circle:
                            Circle()
                                .fill(.tint)
                                .frame(width: frame / 30, height: frame / 30)
                        case .triangle:
                            Triangle()
                                .fill(.tint)
                                .frame(width: frame / 30, height: frame / 30)
                                .rotationEffect(.degrees(180))
                        case .systemImage(let systemImage):
                            Image(systemName: systemImage)
                                .resizable()
                                .scaledToFit()
                                .symbolVariant(.fill)
                                .padding(frame / 180)
                                .foregroundStyle(Color(.white))
                                .frame(width: frame / 30, height: frame / 30)
                                .background(.tint, in: .circle)
                    }
                }
            }
            .offset(y: frame / 4 - inset * 3)
            .rotationEffect(.degrees(.init(date.time.second * 6)))
        }
    }
}
