//
//  Day.swift
//  moodCalendar
//
//  Created by Benjamin Chang on 2021-05-02.
//

import Foundation
import SwiftUI

struct Day: Hashable, Codable {
    var day: String
    var color: Int
    var weekday: Int
    
    func saveItem() {
        DataManager.save(self, with: day)
    }
    
    func toString() -> String {
        var output = ""
        output += "day: " + self.day + "\n"
        output += "color: " + self.color.description + "\n"
        output += "weekday: " + self.weekday.description + "\n"
        return output
    }
}
