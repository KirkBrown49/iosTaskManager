
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
        
        
        let formatter = DateFormatter()
        
        formatter.dateFormat = "yyyy-MM-dd"
        
        let myString = formatter.string(from: Date())
        
        let yourDate = formatter.date(from: myString)
        
        
        
        let dueDate = formatter.string(from:task.dueDate)
        
        print(dueDate)
        let date = formatter.date(from: dueDate)
       
        taskLabel.text = task.taskLabel
        dueDateLabel.text = formatter.string(from:date!)
        if task.completed == true {
            availabilityView.backgroundColor = .green
            
        } else {
            availabilityView.backgroundColor = .red
        }
        
    }
        
}


