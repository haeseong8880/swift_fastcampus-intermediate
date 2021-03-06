//
//  Alert.swift
//  Drink
//
//  Created by haeseongJung on 2022/03/23.
//

import Foundation

struct Alert: Codable {
    var id: String = UUID().uuidString
    let date: Date
    var isOn: Bool
    
    var time: String {
        let timeFormmatter = DateFormatter()
        timeFormmatter.dateFormat = "hh:mm"
        return timeFormmatter.string(from: date)
    }
    
    var meridiem: String {
        let meridiemFormatter = DateFormatter()
        meridiemFormatter.dateFormat = "a"
        meridiemFormatter.locale = Locale(identifier: "ko")
        return meridiemFormatter.string(from: date)
    }
}
