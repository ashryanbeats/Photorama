//
//  PhotosViewController.swift
//  Photorama
//
//  Created by Ash Ryan Arnwine on 7/30/16.
//  Copyright © 2016 Ash Ryan Beats. All rights reserved.
//

import UIKit

class PhotosViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    var store: PhotoStore!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        store.fetchRecentPhotos()
    }
}
