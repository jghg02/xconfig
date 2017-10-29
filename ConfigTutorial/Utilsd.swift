//
//  Utilsd.swift
//  ConfigTutorial
//
//  Created by Josue Hernandez Gonzalez on 10/29/17.
//  Copyright © 2017 Josue Hernandez Gonzalez. All rights reserved.
//

import UIKit

class Utilsd: NSObject {
    
    //Method to get the value from .plist file
    //The result dependes of wich scheme you selected (Release|Debug)
    func infoForKey(_ key: String) -> String? {
        return (Bundle.main.infoDictionary?[key] as? String)?
            .replacingOccurrences(of: "\\", with: "")
    }

}
