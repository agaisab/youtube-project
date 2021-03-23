//
//  Response.swift
//  youtube-project
//
//  Created by Ł.B Morapel on 18/03/2021.
//

import Foundation

struct Response: Decodable {
    
    //MARK: VARS
    
    var items: [Video]?
    
    
    //MARK: CODING KEYS
    
    enum CodingKeys: String, CodingKey {
        
        case items
    }
    
    //MARK: JSON PARSING
    
    init (from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.items = try container.decode([Video].self, forKey: .items)
    }
    
}
