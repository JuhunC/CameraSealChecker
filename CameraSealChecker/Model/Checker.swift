//
//  Checker.swift
//  CameraSealChecker
//
//  Created by JuhunChoi on 2022/01/04.
//

import Foundation
import SwiftUI

struct Checker: Hashable, Codable, Identifiable{
    var id: Int
    var name: String
    var time: Time
    
    struct Time: Hashable, Codable{
        var hour: Int
        var min: Int
        var sec: Int
    }

}
