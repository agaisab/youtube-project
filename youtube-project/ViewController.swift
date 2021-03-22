//
//  ViewController.swift
//  youtube-project
//
//  Created by AppCrafter on 17/03/2021.
//
import Foundation
import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    

    

    @IBOutlet weak var TableView: UITableView!
    
    var model = Model()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Set it self as a datasource and the delegate
        TableView.dataSource = self
        TableView.delegate = self
        
        model.getVideos()
    }
    
    
    // MARK: - TalbeView Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        <#code#>
    }
    
}
    


