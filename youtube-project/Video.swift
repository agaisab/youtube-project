//
//  Video.swift
//  youtube-project
//
//  Created by Ł.B Morapel on 18/03/2021.
//

import Foundation

class Video: Decodable {
    
    // MARK: VARS

    var videoId = ""
    var title = ""
    var description = ""
    var thumbnail = ""
    var published = Date()
    
    // MARK: CODING KEYS
    
    enum CodingKeys: String, CodingKey {
        
        case snippet
        case thumbnails
        case high
        case resourceId
        
        case published = "publishedAt"
        case title
        case description
        case thumbnail = "url"
        case videoId
        
    }
    
    //MARK: JSON PARSING
    
    required init(from decoder: Decoder) throws {
    
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        let snippetContainer = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .snippet)
        
        // Parse title
        self.title = try snippetContainer.decode(String.self, forKey: .title)
        
        // Parse description
        self.description = try snippetContainer.decode(String.self, forKey: .description)
        
        // Parse the publish date
        self.published = try snippetContainer.decode(Date.self, forKey: .published)
        
        // Parse thumbnails
        let thumbnailContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .thumbnail)
        
        let heighContainer = try thumbnailContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .high)
        
        self.thumbnail = try heighContainer.decode(String.self, forKey: .thumbnail)
        
        // Parse videoId
        
        let resourceIdContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .resourceId)
        
        self.videoId = try resourceIdContainer.decode(String.self, forKey: .videoId)
    }
}
