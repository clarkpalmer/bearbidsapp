//
//  EventsViewController.swift
//  BearBids
//
//  Created by Clark Palmer on 12/6/17.
//  Copyright © 2017 Clark Palmer. All rights reserved.
//

import UIKit

class EventsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var eventTableView: UITableView!
    
    let eventNames: [String] = ["Sailing Party", "SAE Wine Wednesday", "Sigma Chi"]
    let eventDates: [String] = ["Saturday Dec 9th", "Wednesday Dec 13th", "Thursday Dec 14th"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        eventTableView.delegate = self
        eventTableView.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindToEvents(segue:UIStoryboardSegue) { }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Events"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "eventCell", for: indexPath) as! EventTableViewCell
        
        cell.eventName.text = eventNames[indexPath.row]
        cell.eventDate.text = eventDates[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            performSegue(withIdentifier: "sailing", sender: self)
        } else if indexPath.row == 1 {
            performSegue(withIdentifier: "sae", sender: self)
        } else {
            performSegue(withIdentifier: "sigmachi", sender: self)
        }
    }

}
