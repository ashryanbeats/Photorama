//
//  PhotoStore.swift
//  Photorama
//
//  Created by Ash Ryan Arnwine on 7/30/16.
//  Copyright © 2016 Ash Ryan Beats. All rights reserved.
//

import Foundation

class PhotoStore {
    
    let session: NSURLSession = {
        let config = NSURLSessionConfiguration.defaultSessionConfiguration()
        return NSURLSession(configuration: config)
    }()
    
    func fetchRecentPhotos() {
        
        let url = FlickrAPI.recentPhotosURL()
        let request = NSURLRequest(URL: url)
        let task = session.dataTaskWithRequest(request) {
            (data, response, error) -> Void in
            
            if let jsonData = data {
                if let jsonString = NSString(data: jsonData, encoding: NSUTF8StringEncoding) {
                    print(jsonString)
                }
            }
            else if let requestError = error {
                print("Error fetching recent photos: \(requestError)")
            }
            else {
                print("Unexpected error with the request")
            }
        }
        task.resume()
    }
}