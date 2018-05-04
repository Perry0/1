//
//  ViewController.swift
//  1
//
//  Created by perch on 2018/5/4.
//  Copyright © 2018年 perch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBOutlet weak var imageView: UIImageView!
           
    @IBOutlet weak var button: UIButton!
    
    @IBAction func buttonClick(_ sender: Any) {
        let picker = UIImagePickerController()
        picker.delegate = self as! UIImagePickerControllerDelegate & UINavigationControllerDelegate
        picker.sourceType = .photoLibrary
        present(picker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info["UIImagePickerControllerOriginalInage"]as?UIImage{
            imageView.image = image
        }
        picker.dismiss(animated: true, completion: nil)
    }
    
    
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    
    
    override func didReceiveMemoryWarning() {

        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

