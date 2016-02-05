//
//  ViewController.swift
//  CollegeProfileBuilder
//
//  Created by Student on 1/20/16.
//  Copyright © 2016 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var editButton: UIBarButtonItem!
    
    var colleges = ["Columbia College Chicago", "University of Stanford", "University of Illinois"]

    override func viewDidLoad() {
        super.viewDidLoad()
        //editButton.tag = 0
        
        //colleges.append(CollegesViewController(name: "Columbia College Chicago", location: "Illinois", numberOfStudents: 10000, image: UIImage(named: "ColumbiaCollegeChicago")!))
        //colleges.append(CollegesViewController(name: "Stanford", location: "California", numberOfStudents: 00000, image: UIImage(named: "ColumbiaCollegeChicago")!))
        //colleges.append(CollegesViewController(name: "Columbia College Chicago", location: "Illinois", numberOfStudents: 10000, image: UIImage(named: "ColumbiaCollegeChicago")!))
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MyCell", forIndexPath: indexPath)
        cell.textLabel?.text = colleges[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return colleges.count
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath)
    {
        if editingStyle == .Delete
        {
            colleges.removeAtIndex(indexPath.row)
            tableView.reloadData()
        }
    }
    

}

