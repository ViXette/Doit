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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addTapped(_ sender: AnyObject) {
        let nameTask = nameTask_TextField.text!
        if !nameTask.isEmpty {
            let contex = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
            
            let task = Task(context: contex)
            task.name = nameTask
            task.important = important_Switch.isOn
            
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            
        }
        
        navigationController!.popViewController(animated: true)
    }

}
