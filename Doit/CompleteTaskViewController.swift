//
//  CompleteTaskViewController.swift
//  Doit
//
//  Created by VX on 26/08/16.
//  Copyright © 2016 VXette. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    @IBOutlet weak var task_Label: UILabel!
    
    var prevVC = TasksViewController()
    
    var task = Task()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        task_Label.text = (task.important ? "! " : "") + task.name
    }

    @IBAction func completeTapped(_ sender: AnyObject) {
        prevVC.tasks.remove(at: prevVC.selectedTask)
        prevVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }

}
