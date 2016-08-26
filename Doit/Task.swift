//
//  Task.swift
//  Doit
//
//  Created by VX on 23/08/16.
//  Copyright © 2016 VXette. All rights reserved.
//

import Foundation

class Task {
    var name = ""
    var important = false
    
    init (_ name: String = "", _ important: Bool = false) {
        self.name = name
        self.important = important
    }
}
