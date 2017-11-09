//
//  Created by VX on 26/08/16.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    @IBOutlet weak var task_Label: UILabel!
    
    var task : Task? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        task_Label.text = (task!.important ? "! " : "") + task!.name!
    }

    @IBAction func completeTapped(_ sender: AnyObject) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        context.delete(task!)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        navigationController!.popViewController(animated: true)
    }

}
