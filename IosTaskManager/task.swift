//
//  task.swift
//  IosTaskManager
//
//  Created by Kirk Brown on 11/27/18.
//  Copyright © 2018 Kirk Brown. All rights reserved.
//

import Foundation
class Task {
    // set the task and duedate
    let taskLabel: String
    
    var dueDate: Date
    let availabilityView : Bool
    var completed: Bool = false
    init(taskLabel: String, dueDate: Date,availabilityView: Bool) {
        self.taskLabel = taskLabel
        self.dueDate = dueDate
        self.availabilityView = availabilityView
    }
}
