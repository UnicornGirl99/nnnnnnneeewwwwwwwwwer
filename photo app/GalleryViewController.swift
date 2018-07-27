//
//  GalleryViewController.swift
//  photo app
//
//  Created by Darya Dahi on 7/27/18.
//  Copyright © 2018 Darya Dahi. All rights reserved.
//

import UIKit

class GalleryViewController: UIViewController {

    func getImage (imageName: String) {
        let fileManager = FileManager.default
        let imagePath = (NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask,true)[0] as NSString).appendingPathComponent(imageName)
        if fileManager.fileExists(atPath: imagePath) {
            imageGallery.image = UIImage(contentsOfFile: imagePath)
            print("Image!")
        } else {
            print("Oh no! No Image!")
        }
    }
    
    @IBOutlet weak var imageGallery: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
getImage(imageName: "test.png")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose
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
