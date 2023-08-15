//
//  DateExtension.swift
//  AnalogClock
//
//  Created by BlueSkyAnimal on 2023/08/14.
//

import Foundation

public extension Date {
    var time: Time {
        return .init(self.timeIntervalSince(Calendar.autoupdatingCurrent.date(from: .init(year: 1970)) ?? .now))
    }
}
