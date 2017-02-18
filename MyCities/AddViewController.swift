//
//  AddViewController.swift
//  MyCities
//
//  Created by Carol_G on 2/16/17.
//  Copyright © 2017 Carol_G. All rights reserved.
//

import UIKit


class AddViewController: UIViewController, UITextFieldDelegate , UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var DescriptionTextView: UITextView!
    @IBOutlet weak var saveButton: UIBarButtonItem!
 
    
    var city: City?
    
    override func viewDidLoad() {
  
        super.viewDidLoad()
      
        
        cityTextField.delegate = self
        
        checkValidMealName()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    // MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        // Hide the keyboard
        textField.resignFirstResponder()
        return true
    
    }
    
    
    func textFieldDidBeginEditing(textField: UITextField) {
        // Disable the Save button while editing.
        saveButton.enabled = false
    }
    
    
    
    //MARK: Private Methods
    
    func checkValidMealName() {
        // Disable the Save button if the text field is empty.
        let text = cityTextField.text ?? ""
        saveButton.enabled = !text.isEmpty
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        checkValidMealName()
        navigationItem.title = textField.text
    }

    
    
    // MARK: UIImagePickerControllerDelegate
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        // Dismiss the picker if the user cancelled
        
        //FIX
        //dismiss(animated: true, completion: nil)
    }
    
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        
        // The info dictionary may contain multiple representations of the image. You want to use the original
        guard let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage else
        {
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
        }
        
        photoImageView.image = selectedImage
        
        // Dismiss the picker
        
        //FIX
        //dismiss(animated: true, completion: nil)
    }

    
    // MARK: Navigation
    
    @IBAction func cancel(sender: UIBarButtonItem) {
        dismissViewControllerAnimated(true, completion: nil)
    }
 
    
    
    // This method lets you configure a view controller before it's presented.
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if saveButton === sender {
            let cityname = cityTextField.text ?? ""
            let country = countryTextField.text ?? ""
            let photo = photoImageView.image

            city = City(city: cityname, country: country, photo: photo)
        }

    }
    
    

    


    
    
    // MARK: Actions
        /*
 @IBAction func selectImageFromPhotoLibrary(sender: UITapGestureRecognizer) {
        // Hide the keyboard
        cityTextField.resignFirstResponder()
        
        // UIImagePickerController is a view controller that lets an user pick media from their photo library
        let imagePickerController = UIImagePickerController()
    
        // Only allow photos to be picked, not taken.
        imagePickerController.sourceType = .PhotoLibrary
        
        // Make sure ViewController is notified when the user picks an image
        imagePickerController.delegate = self
        
        //FIX
        //present(imagePickerController, animated: true, completion: nil)
    }
 */
   

}

