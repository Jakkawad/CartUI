//
//  ViewController.swift
//  CartUI
//
//  Created by admin on 3/14/2560 BE.
//  Copyright © 2560 Jakkawad.Chaiplee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 10
        if section == 0 {
            return 10
        } else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell0 = tableView.dequeueReusableCell(withIdentifier: "tableCell0")
            cell0?.selectionStyle = .none
            cell0?.layer.shadowOffset = CGSize(width: 0, height: 0)
            cell0?.layer.shadowColor = UIColor.black.cgColor
            cell0?.layer.shadowOpacity = 0.23
            cell0?.layer.shadowRadius = 4
            return cell0!
        } else {
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "tableCell1")
            return cell1!
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.separatorStyle = .none
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

