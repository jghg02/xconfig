//
//  ViewController.swift
//  ConfigTutorial
//
//  Created by Josue Hernandez Gonzalez on 10/29/17.
//  Copyright © 2017 Josue Hernandez Gonzalez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //instance of Utils Class
    let utils = Utilsd();

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //In this point you need pass a Key
        let url = utils.infoForKey("BackendURL");
        print("This is the URL: \(url ?? "nothing")");
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

