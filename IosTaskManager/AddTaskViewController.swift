//
//  AddTaskViewController.swift
//  IosTaskManager
//
//  Created by Kirk Brown on 11/29/18.
//  Copyright © 2018 Kirk Brown. All rights reserved.
//

import UIKit

class addTask: UIViewController {
    
    @IBOutlet weak var taskTextField: UITextField!
        
    @IBOutlet weak var datePicker: UIDatePicker!
    
    
    
    func saveTasks() {
        guard let title = taskTextField.text else { return }
        let dueDate = datePicker.date
        let task = Task(taskTitle: title, dueDate: dueDate)
        Library.sharedInstance.task.append(task)
        
        
    }
    
    
    
    
    
    @IBAction func savePressed(_ sender: Any) {
        performSegue(withIdentifier: "getit", sender: Any?.self)
        saveTasks()
        
    }
    
}
