//
//  Project: ReyesAdriana-HW2
//  EID: amr6834
//  Course: CS371L
//

import UIKit

// storyboard handles how things look, this is for behavior
class ViewController: UIViewController {

    //IBOutlets for each of the two text fields and the status label
    @IBOutlet weak var userIdTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var statusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // called anytime login button pressed
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let current_userId = userIdTextField.text ?? ""
        let current_password = passwordTextField.text ?? ""
        
        // if either one is empty, show the invalid message
        if current_userId == "" || current_password == "" {
            statusLabel.text = "Invalid login"
        } else {
            // all is well, show login message
            statusLabel.text = "\(current_userId) logged in"
        }
    }
    
    // Called when the user clicks on the view outside of the UITextField

        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            self.view.endEditing(true)
        }
    
}

