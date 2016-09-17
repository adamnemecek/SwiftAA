//
//  Neptune.swift
//  SwiftAA
//
//  Created by Cédric Foellmi on 19/06/16.
//  Copyright © 2016 onekiloparsec. All rights reserved.
//

import Foundation

public struct Neptune: Planet {
    public static var color: Color {
        get { return Color(red: 0.392, green:0.518, blue:0.871, alpha: 1.0) }
    }

    public fileprivate(set) var julianDay: JulianDay
    public fileprivate(set) var highPrecision: Bool
    
    public init(julianDay: JulianDay, highPrecision: Bool = true) {
        self.julianDay = julianDay
        self.highPrecision = highPrecision
    }
    
    public init(date: Date, highPrecision: Bool = true) {
        self.init(julianDay: KPCAADate(gregorianCalendarDate: date).julian(), highPrecision: highPrecision)
    }
    
    public var magnitude: Double { get { return KPCAAIlluminatedFraction_NeptuneMagnitudeAA(self.radiusVector, self.apparentGeocentricDistance) } }
}

