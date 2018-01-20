//
//  PersonViewController.swift
//  Dojo1
//
//  Created by Renan Benatti Dias on 20/01/18.
//  Copyright © 2018 Blue Origami. All rights reserved.
//

import UIKit

class PersonViewController: UIViewController {
    
    @IBOutlet weak var avatarImage: UIImageView!
    
    @IBOutlet weak var nameTitleLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var surnameTitleLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    
    @IBAction func closeButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    var person: Person?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTitleLabel.text = "Nome:"
        surnameTitleLabel.text = "Sobrenome:"
        
        avatarImage.layer.cornerRadius = avatarImage.bounds.height / 2
        avatarImage.clipsToBounds = true
        avatarImage.image = #imageLiteral(resourceName: "renanbenattidiasavatar")
        
        self.nameLabel.text = person?.name
        self.surnameLabel.text = person?.surname
    }
    
    func present(person: Person, On viewController: MainViewController) {
        self.person = person
        viewController.present(self, animated: true, completion: nil)
    }
}
