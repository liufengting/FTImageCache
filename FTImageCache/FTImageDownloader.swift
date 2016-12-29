//
//  FTImageDownloader.swift
//  FTImageCacheDemo
//
//  Created by liufengting on 28/12/2016.
//  Copyright © 2016 LiuFengting. All rights reserved.
//

import UIKit

public class FTImageDownloader: NSObject {

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
        return imageURLString.md5
    }
    

    
}

extension String  {
    
    var md5: String! {
        let str = self.cString(using: String.Encoding.utf8)
        let strLen = CC_LONG(self.lengthOfBytes(using: String.Encoding.utf8))
        let digestLen = Int(CC_MD5_DIGEST_LENGTH)
        let result = UnsafeMutablePointer<CUnsignedChar>.allocate(capacity: digestLen)
        
        CC_MD5(str!, strLen, result)
        
        let hash = NSMutableString()
        for i in 0..<digestLen {
            hash.appendFormat("%02x", result[i])
        }
        result.deallocate(capacity: digestLen)
        return String(format: hash as String)
    }
    
}
