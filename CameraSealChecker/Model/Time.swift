//
//  Time.swift
//  CameraSealChecker
//
//  Created by JuhunChoi on 2022/01/06.
//

import Foundation

struct Time: Hashable, Codable{
    var hour: Int
    var min: Int
    var sec: Int
    var ampm: Bool
    
    mutating func addHour(){
        hour += 1
        if(hour == 12){
            ampm = !ampm
        }
        if(hour > 12){
            hour = 1
        }
    }
    mutating func subHour(){
        hour -= 1
        if(hour == 11){
            ampm = !ampm
        }
        if(hour <= 0){
            hour = 12
        }
    }
    mutating func addMin(){
        min += 1
        if(min >= 60){
            min = 0
            addHour()
        }
    }
    mutating func subMin(){
        min -= 1
        if(min < 0){
            min = 59
            subHour()
        }
    }
}
