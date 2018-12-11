//
//  AddTaskViewController.swift
//  IosTaskManager
//
//  Created by Kirk Brown on 11/29/18.
//  Copyright © 2018 Kirk Brown. All rights reserved.
//

import UIKit

class addTaskViewController: UIViewController {
    
    let library = Library.sharedInstance
    
    @IBOutlet weak var taskTextField: UITextField!
    

    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    
    
    func saveTasks() {
        guard let title = taskTextField.text else { return }
        let dueDate = datePicker.date
        let task = Task(taskLabel: title, dueDate: dueDate, availabilityView: false)
        print(task.taskLabel)
        library.task.append(task)
        //Library.sharedInstance.task.append(task)
        //self.navigationController?.popViewController(animated: true)
        
    }
    
    
            
    
    @IBAction func saveTask(_ sender: Any) {
    saveTasks()
    performSegue(withIdentifier: "getit", sender: Any?.self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
    
}
