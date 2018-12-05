//
//  TaskMangerViewController.swift
//  IosTaskManager
//
//  Created by Kirk Brown on 11/27/18.
//  Copyright © 2018 Kirk Brown. All rights reserved.
//



import UIKit

class viewController: UIViewController {
    
    let library = Library.sharedInstance
    
    @IBOutlet var tableView: UITableView!
    
    
    
    
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        
        self.tableView.backgroundColor = UIColor.white
        tableView.reloadData()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
}




// sets the amount of rows in the table view by the number of items
extension viewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return library.task.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! Taskcell
        
        let task = library.task[indexPath.row]
        print(library.task[indexPath.row].taskTitle)
        cell.setup(task: task)
        
        return cell
    }
    func completeATask(at indexPath: IndexPath) {
        let task = self.library.task[indexPath.row]
        
        let calendar = Calendar(identifier: .gregorian)
        let dueDate = calendar.date(byAdding: .day, value: 7, to: Date())!
        
        task.completed = false
        (tableView.cellForRow(at: indexPath) as! Taskcell).setup(task: task)
    }
    
    func unCompleteATask(at indexPath: IndexPath) {
        let task = self.library.task[indexPath.row]
        task.completed = true
        (tableView.cellForRow(at: indexPath) as! Taskcell).setup(task: task)
        
    }
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        // We create the delete action, with a closure associated with it.
        let deleteAction = UITableViewRowAction(style: .destructive, title: "Delete") { _, indexPath in
            Library.sharedInstance.task.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
        
        let task = library.task[indexPath.row]
        
        
        
        switch task.completed {
        case true:
            let uncompleteAction = UITableViewRowAction(style: .normal, title: "uncomplete a task") { _, indexPath in
                
                self.unCompleteATask(at: indexPath)
                
                
            }
            
            return [uncompleteAction, deleteAction]
            
        case false:
            let completeAction = UITableViewRowAction(style: .normal, title: "complete a task") { _, indexPath in
                self.completeATask(at: indexPath)
                
            }
            
            return [completeAction, deleteAction]
            
        }
    }
    
}




