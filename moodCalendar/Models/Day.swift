//
//  Day.swift
//  moodCalendar
//
//  Created by Benjamin Chang on 2021-05-02.
//

import Foundation
import SwiftUI

struct Day {
    private var color: Color
    private var height: Int = 30
    private var width: Int = 30
    private var day: Int
    
    mutating func updateColor(c: Color) -> Void {
        self.color = c
    }
    
}
