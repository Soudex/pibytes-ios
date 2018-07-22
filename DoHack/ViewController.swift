//
//  ViewController.swift
//  DoHack
//
//  Created by Tim Grünsel on 21.07.18.
//  Copyright © 2018 Tim Grünsel. All rights reserved.
//
import Alamofire
import UIKit

class ViewController: UIViewController {
    @IBAction func Switch(_ sender: UISwitch) {
        
    }
    @IBAction func Button_Weiss(_ sender: UIButton) {
        let command = "white_switch"
        sendRequest(command: command , value: "")
    }
    @IBAction func ButtonGelb(_ sender: UIButton) {
        let command = "yellow_switch"
        sendRequest(command: command , value: "")
    }
    @IBAction func Button_Blau(_ sender: UIButton) {
        let command = "blue_switch"
        sendRequest(command: command , value: "")
    }
    @IBAction func Button_Rot(_ sender: UIButton) {
        let command = "red_switch"
        sendRequest(command: command , value: "")
    }
    @IBAction func Button_Gruen(_ sender: UIButton) {
        let command = "green_switch"
        sendRequest(command: command , value: "")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func sendRequest(command: String, value: String){
        let urlstring = "http://raspy.local"
        
        Alamofire.request(urlstring,method: .post,parameters: ["command":command,"value":value])
        
    }
    


}

