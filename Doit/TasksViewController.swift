//
//  TasksViewController.swift
//  Doit
//
//  Created by VX on 23/08/16.
//  Copyright © 2016 VXette. All rights reserved.
//

import UIKit

class TasksViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var tasks: [Task] = []
    var selectedTask = -1
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tasks = makeTasks()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        let task = tasks[indexPath.row]
        
        cell.textLabel?.text = (task.important ? "! " : "") + task.name
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedTask = indexPath.row
        performSegue(withIdentifier: "selectTaskSegue", sender: tasks[indexPath.row])
    }
    
    func makeTasks() -> [Task] {
        return [Task("Walk"), Task("Buy cheese", true), Task("Mow the lown")]
    }
    
    @IBAction func plusTapped(_ sender: AnyObject) {
        //performSegue(withIdentifier: "addSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addSegue" {
            let nextVC = segue.destination as! CreateTaskViewController
            nextVC.prevVC = self
        }
        
        if segue.identifier == "selectTaskSegue" {
            let nextVC = segue.destination as! CompleteTaskViewController
            nextVC.task = sender as! Task
            nextVC.prevVC = self
        }
    }
    
}

