//
//  CollegesViewController.swift
//  CollegeProfileBuilder
//
//  Created by Student on 1/20/16.
//  Copyright © 2016 Student. All rights reserved.
//

import UIKit

class CollegesViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var image: UIImageView!
    
    var colleges : CollegesViewController!

    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.text = colleges.name

    }

}
