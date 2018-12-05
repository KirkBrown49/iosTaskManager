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
    let taskTitle: String
    
    var dueDate: Date
    
    var completed: Bool = false
    init(taskTitle: String, dueDate: Date) {
        self.taskTitle = taskTitle
        self.dueDate = dueDate
        
    }
}
