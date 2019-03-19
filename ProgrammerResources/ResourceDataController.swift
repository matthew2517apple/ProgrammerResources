//
//  ResourceDataController.swift
//  ProgrammerResources
//
//  Created by Matthew Curran on 3/19/19.
//  Copyright © 2019 Matthew. All rights reserved.
//

import Foundation

class RescourceDataController {
    let resources: [Resource]
    
    init() {
        let plistURL = Bundle.main.path(forResource: "ProgrammerResources", ofType: ".plist")
        let resourcesPlist = NSArray(contentsOfFile: plistURL!)
        
        var resources: [Resource] = []
        
        for r in resourcesPlist! {
            let dict = r as! [String: String]
            let res = Resource(dictionary: dict)
            resources.append(res)
        }
        
        self.resources = resources
    }
}
