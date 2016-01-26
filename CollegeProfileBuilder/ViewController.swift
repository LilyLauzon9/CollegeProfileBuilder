//
//  ViewController.swift
//  CollegeProfileBuilder
//
//  Created by Student on 1/20/16.
//  Copyright © 2016 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var editButton: UIBarButtonItem!
    
    var colleges : [CollegesViewController] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        editButton.tag = 0
        
        colleges.append(CollegesViewController(name: "Columbia College Chicago", location: "Illinois", numberOfStudents: 10000, image: UIImage(named: "ColumbiaCollegeChicago")!))
        //colleges.append(CollegesViewController(name: "Stanford", location: "California", numberOfStudents: 00000, image: UIImage(named: "ColumbiaCollegeChicago")!))
        //colleges.append(CollegesViewController(name: "Columbia College Chicago", location: "Illinois", numberOfStudents: 10000, image: UIImage(named: "ColumbiaCollegeChicago")!))
        
    }

}

