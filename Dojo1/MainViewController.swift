//
//  MainViewController.swift
//  Dojo1
//
//  Created by Renan Benatti Dias on 20/01/18.
//  Copyright © 2018 Blue Origami. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var headerTitleLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var surnameTextField: UITextField!
    
    @IBAction func confirmButton(_ sender: Any) {
        if let name = nameTextField.text, let surname = surnameTextField.text {
            if name.isEmpty || surname.isEmpty {
                print("The user did not type his name")
                let alert = UIAlertController(title: "Ops", message: "Alguns campos não foram preenchidos", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
                present(alert, animated: true, completion: nil)
                return
            }
            print("The user's name is \(name) \(surname)")
        }
    }
    
    // Called when controller is loaded into memory
    // Comment viewDidAppear - viewWillAppear
    override func viewDidLoad() {
        super.viewDidLoad()
        
        applyAppearance()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        nameTextField.endEditing(true)
        surnameTextField.endEditing(true)
    }
    
    private func applyAppearance() {
        headerTitleLabel.text = "Our super awesome form!!! 🤩🤩🤩"
        
        nameLabel.text = "Nome:"
        surnameLabel.text = "Sobrenome:"
        
        nameTextField.placeholder = "Anna"
        nameTextField.autocapitalizationType = .words
        surnameTextField.placeholder = "Arendelle"
        surnameTextField.autocapitalizationType = .words
    }

    // The system is telling you that it is running out of RAM and seeing if you can help.
    // We shall commment out
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func present(On window: UIWindow) {
        window.rootViewController = self
        window.makeKeyAndVisible()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}
