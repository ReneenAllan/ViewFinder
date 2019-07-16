//
//  AddPhotoViewController.swift
//  ViewFinder
//
//  Created by Apple on 7/16/19.
//  Copyright © 2019 KWK. All rights reserved.
//

import UIKit

class AddPhotoViewController:
    UIViewController, UIImagePickerControllerDelegate,
    UINavigationControllerDelegate {
    var imagePicker = UIImagePickerController()
    
    @IBOutlet weak var selectedImage: UIImageView!
    @IBOutlet weak var textField: UITextField!
    
  
    @IBAction func camera(_ sender: UIButton) {
        imagePicker.sourceType = .camera
        present(imagePicker, animated: true, completion: nil)
    }
   
    @IBAction func photoLibrary(_ sender: UIButton) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func albums(_ sender: UIButton) {
        imagePicker.sourceType = .savedPhotosAlbum
        present(imagePicker, animated: true, completion: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
    }
  
   
}
