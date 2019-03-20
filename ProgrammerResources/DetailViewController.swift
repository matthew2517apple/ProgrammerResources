//
//  DetailViewController.swift
//  ProgrammerResources
//
//  Created by Matthew Curran on 3/19/19.
//  Copyright © 2019 Matthew. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var resource: Resource!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var urlLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = resource.name
        descriptionLabel.text = resource.description
        urlLabel.text = resource.url.absoluteString
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(DetailViewController.showWeb))
        
        urlLabel.addGestureRecognizer(tapGestureRecognizer)
    }
    
    @objc func showWeb() {
        performSegue(withIdentifier: "showWebView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showWebView" {
            let webView = segue.destination as! WebViewController
            webView.url = resource.url
        }
    }
}   
