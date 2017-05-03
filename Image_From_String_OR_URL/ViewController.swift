//
//  ViewController.swift
//  Image_From_String_OR_URL
//
//  Created by Leo on 11/15/16.
//  Copyright © 2016 Leo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageViewFirst: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

//        imageViewFirst.image = self.downloadImageFromString(stringURL: "http://www.shagunn.info/img/product/big/56b1e0b2-5054-4ef2-9b79-23ddb495f4a4.png")


         let urlImage = URL(string: "http://www.shagunn.info/img/product/big/56b1e0b2-5054-4ef2-9b79-23ddb495f4a4.png")
        imageViewFirst.image = self.downloadImageFromURL(urlImage: urlImage!)

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func downloadImageFromURL(urlImage: URL) -> UIImage
    {
        var imageDownloaded: UIImage
        let data = try? Data(contentsOf: urlImage) //make sure your image in this url does exist, otherwise unwrap in a if let check / try-catch
        imageDownloaded = UIImage(data: data!)!
        return imageDownloaded
    }



    func downloadImageFromString(stringURL: String) -> UIImage
    {
        var imageDownloaded: UIImage
        let urlImage = URL(string: stringURL)
        let data = try? Data(contentsOf: urlImage!) //make sure your image in this url does exist, otherwise unwrap in a if let check / try-catch
        imageDownloaded = UIImage(data: data!)!
        return imageDownloaded
    }


}

