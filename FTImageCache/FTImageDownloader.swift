//
//  FTImageDownloader.swift
//  FTImageCacheDemo
//
//  Created by liufengting on 28/12/2016.
//  Copyright © 2016 LiuFengting. All rights reserved.
//

import UIKit

class FTImageDownloader: NSObject {

    public static var sharedInstance : FTImageDownloader {
        struct Static {
            static let instance : FTImageDownloader = FTImageDownloader()
        }
        return Static.instance
    }

    
    public func downloadImage(_ imageURL: URL, completion:(( _ image: UIImage, _ finished: Bool)->())) {
    
        
    }
 
    public func saveImageToCache(_ image: UIImage, imageURL: URL){
        
        
    }
    
    public func cacheKeyForImageURL(_ imageURL: URL?) -> String {
        if imageURL == nil {
            return ""
        }
        return self.getCacheKeyForImageURLString((imageURL?.absoluteString)!)
    }
    
    private func getCacheKeyForImageURLString(_ imageURLString: String) -> String {
        
        
        
        return ""
    }
    
    
    
}
