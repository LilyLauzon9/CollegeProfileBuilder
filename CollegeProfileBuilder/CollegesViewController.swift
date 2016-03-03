//
//  CollegesViewController.swift
//  CollegeProfileBuilder
//
//  Created by Student on 1/20/16.
//  Copyright © 2016 Student. All rights reserved.
//

import UIKit
import SafariServices

class CollegesViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, SFSafariViewControllerDelegate {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var websiteLinkTextField: UITextField!
    
    var colleges : College!
    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.text = colleges.name
        locationTextField.text = colleges.location
        numberTextField.text = String(colleges.numberOfStudents)
        image.image = colleges.image
        websiteLinkTextField.text = colleges.webpage
        
        imagePicker.delegate = self

    }
    
    @IBAction func onTappedSaveButton(sender: AnyObject)
    {
        colleges.name = nameTextField.text!
        colleges.location = locationTextField.text!
        colleges.numberOfStudents = Int(numberTextField.text!)!
        colleges.webpage = websiteLinkTextField.text!
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject])
    {
        imagePicker.dismissViewControllerAnimated(true) { 
            () -> Void in
                let selectedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
            self.imageView.image = selectedImage }
    }
    
    @IBAction func onLibraryButtonTapped(sender: AnyObject)
    {
        imagePicker.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func goToWebsiteOnTapped(sender: AnyObject)
    {
        let safariVC = SFSafariViewController(URL: NSURL(string: websiteLinkTextField.text!)!)
        self.presentViewController(safariVC, animated: true, completion: nil)
    }
    

}
