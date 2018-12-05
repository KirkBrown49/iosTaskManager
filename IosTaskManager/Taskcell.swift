//
//  Taskcell.swift
//  IosTaskManager
//
//  Created by Kirk Brown on 11/27/18.
//  Copyright © 2018 Kirk Brown. All rights reserved.
//

import UIKit
class Taskcell: UITableViewCell {
        
        @IBOutlet weak var taskLabel: UILabel!
    
        
        @IBOutlet weak var dueDateLabel: UILabel!
        

        
        @IBOutlet weak var availabilityView: UIView!
        
        func setup(task: Task) {
            taskLabel.text = task.taskTitle
            // if the task is completed the availbility is completed it show green
            switch task.completed {
            case true:
                // hide due date
                dueDateLabel.isHidden = true
                // set view to green
                availabilityView.backgroundColor = .green
                
                // the availibility will show red if the task is not completed
            case false:
                // show due date
                dueDateLabel.isHidden = false
                // set view to red
                availabilityView.backgroundColor = .red
                // set dueDate to formatted date
                
                let dateFormatter = DateFormatter()
                dateFormatter.dateFormat = "MM/dd/yyyy"
                dueDateLabel.text = dateFormatter.string(from: task.dueDate)
            }
        }
        
}


