//
//  CacheManager.swift
//  youtube-project
//
//  Created by Ł.B Morapel on 23/03/2021.
//

import Foundation

class  CacheManager {
    
    static var cache = [String:Data]()
    
    static func setVideoCache (_ url:String, _ data:Data?) {
        
        // Store the image data and use the url as the key
        cache[url] = data
        
    }
    
    static func getVideoCache (_url:String) -> Data? {
    
    // Try to get data for the specified url
        return cache[_url]
        
    }
}
