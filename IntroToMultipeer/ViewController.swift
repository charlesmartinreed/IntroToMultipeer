//
//  ViewController.swift
//  IntroToMultipeer
//
//  Created by Charles Martin Reed on 1/30/19.
//  Copyright © 2019 Charles Martin Reed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK:- Properties
    var users = [User]()
    
    override func viewDidLoad() {
        print("Just dummy info")
    }
}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PeerCell", for: indexPath)
        cell.textLabel?.text = "Hello world"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "segueToChatVC", sender: nil)
    }
}
