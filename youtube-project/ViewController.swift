//
//  ViewController.swift
//  youtube-project
//
//  Created by AppCrafter on 17/03/2021.
//
import Foundation
import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, ModelDelegate {

    @IBOutlet weak var TableView: UITableView!
    
    var model = Model()
    var videos = [Video]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Set it self as a datasource and the delegate
        TableView.dataSource = self
        TableView.delegate = self
        
        //Set it self as the telegate of the model 
        model.delegate = self
        
        model.getVideos()
    }
    
    //MARK: - Model Delegate Methods
    
    func videosFetched(_ videos: [Video]) {
        
        // Set the returned videos to our video property
        self.videos = videos
        
        // Refresh the tableview
        TableView.reloadData()
    }
    
    // MARK: - TalbeView Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Constans.VIDEOCELL_ID, for: indexPath)
        
        //Configure the cell with the data
        
        //Get the title for the viedeo in quesstion
        let title = self.videos[indexPath.row].title
        
        cell.textLabel?.text = title
        
        //Return
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
}
    


