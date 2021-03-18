//
//  Model.swift
//  youtube-project
//
//  Created by Ł.B Morapel on 18/03/2021.
//

import Foundation

class Model {
    
    func getVideos() {
        
        // Create a URL object
        let url = URL(string: Constans.API_URL)
        
        guard url != nil else{
            print("Error, there is no API_URL")
            return
        }
        // Get a URLSession object
        
        let session = URLSession.shared
        // Get a data task from the URLSession ojbect
        
         let dataTask = session.dataTask(with: url!) { (data, response, error) in
            
            //Check if there were any errors
            if error != nil || data == nil {
                print ("There is no data downloaded")
                return
            }
            
            do {
                
            // Parsing the data into viedo objects
            let decoder = JSONDecoder()
                
            decoder.dateDecodingStrategy = .iso8601
            
            let response = try decoder.decode(Response.self, from: data!)
                
                dump(response)
                
            } catch{
                
            }
            
         }
        dataTask.resume()
        // Kick off the task
    }
}
