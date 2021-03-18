//
//  ViewController.swift
//  youtube-project
//
//  Created by AppCrafter on 17/03/2021.
//
import Foundation
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        // URL
        let url = URL(string: "https://ocr-text-extractor.p.rapidapi.com/detect-text-from-image-uri")
        
        guard url != nil else {
            print("Error creating url object")
            return
        }
        
        // URL Request
        var request = URLRequest(url: url!, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 10)
        
        // Specify the header
        let heder = [
        "content-type": "application/json",
        "accept": "string",
        "x-rapidapi-key": "660df5f20bmsh9a8eb2ac5eef222p131ba9jsnf2164067a192",
        "x-rapidapi-host": "ocr-text-extractor.p.rapidapi.com"]
        
        request.allHTTPHeaderFields = heder
        
        // Specify the body
        let jsonObject = [
        "Uri": "https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png",
        "Language": "eng",
        "DetectOrientation": false,
        "Scale": false,
        "IsTable": false,
        "OcrEngine": "Version2"] as [String:Any]
        
        do {
            let requestBody = try JSONSerialization.data(withJSONObject: jsonObject, options:.fragmentsAllowed )
            request.httpBody = requestBody
        }
        catch {
            print("Error creating the data object from json")
        }
        
        // Set the request type
        
        request.httpMethod = "POST"
        
        // Get the URLSession
        
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: request) { (data, respone, error) in
            // Check for errors
            if error == nil && data != nil {
                
            do{   // Try to parse out the data
               let dicionary = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as? [String:Any]
                print(dicionary!)
                }
            catch{
                print("Error parsing response data")
                
                }
                
            }
        }
        
        // Create the data task
        
        // Fire off the data task - API Call
        
        dataTask.resume()
    }
}





