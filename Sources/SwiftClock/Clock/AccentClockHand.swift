//
//  AccentClockHand.swift
//  AnalogClock
//
//  Created by BlueSkyAnimal on 2023/08/15.
//

import SwiftUI

struct AccentClockHand: View {
    @Environment(\.clockFaceStyle) private var face: Clock.FaceStyle
    @Environment(\.clockHandStyle) private var style: Clock.HandStyle
    
    @Binding var date: Date?
    var frame: CGFloat
    var inset: CGFloat
    
    init(date: Binding<Date?>, frame: CGFloat, inset: CGFloat) {
        self._date = date
        self.frame = frame
        self.inset = inset
    }
    
    var length: CGFloat {
        switch style {
            case .normal:
                frame / 2 + inset * 4
            case .circle, .triangle, .systemImage(_):
                frame / 2 + inset * 4 - frame / 30
        }
    }
    
    var body: some View {
        if let date {
            ZStack(alignment: .bottom) {
                hand
                decoration
            }
            .offset(y: frame / 4 - inset * 3)
            .rotationEffect(.degrees(.init(date.time.second * 6)))
        }
    }
    
    @ViewBuilder
    var hand: some View {
        Capsule()
            .fill(.tint)
            .frame(width: frame / 120, height: length)
            .frame(width: frame / 120, height: frame / 2 + inset * 4)
    }
    
    @ViewBuilder
    var decoration: some View {
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
