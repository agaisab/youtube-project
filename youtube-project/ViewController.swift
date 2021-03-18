//
//  ViewController.swift
//  youtube-project
//
//  Created by AppCrafter on 17/03/2021.
//
import Foundation
import UIKit

class ViewController: UIViewController {

    var model = Model()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        model.getVideos()
    }
    
}

