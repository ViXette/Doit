//
//  CreateTaskViewController.swift
//  Doit
//
//  Created by VX on 24/08/16.
//  Copyright © 2016 VXette. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {
    
    @IBOutlet weak var nameTask_TextField: UITextField!
    @IBOutlet weak var important_Switch: UISwitch!
    
    var prevVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func addTapped(_ sender: AnyObject) {
        let nameTask = nameTask_TextField.text!
        if !nameTask.isEmpty {
            let task = Task(nameTask, important_Switch.isOn)
            prevVC.tasks.append(task)
            prevVC.tableView.reloadData()
        }
        
        navigationController!.popViewController(animated: true)
    }

}
