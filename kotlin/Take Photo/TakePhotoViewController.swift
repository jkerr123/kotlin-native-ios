//
//  ViewController.swift
//  kotlin
//
//  Created by Jamie Kerr on 01/11/2018.
//  Copyright © 2018 Jamie Kerr. All rights reserved.
//

import UIKit
import spock

class TakePhotoViewController: UIViewController,
UINavigationControllerDelegate, UIImagePickerControllerDelegate{
    
    @IBOutlet weak var imageView: UIImageView!

    var imagePickerController: UIImagePickerController!

    @IBAction func onTakePhoto(_ sender: Any) {
        imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        imagePickerController.sourceType = .camera
        present(imagePickerController, animated: true, completion: nil)
    }

    func imagePickerController(_ picker: UIImagePickerController,
                               didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {

        guard let takenImage = info[.originalImage] as? UIImage else {
            fatalError("error capturing image")
        }

        imageView.image = takenImage
        imagePickerController.dismiss(animated: true, completion: nil)
      
        let jpegImage = takenImage.jpegData(compressionQuality: 0)
        let base64String = jpegImage?.base64EncodedString()
        
        spockManager.getSpock()?.findProductsFromImage(base64Image: base64String!)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

    }
}

