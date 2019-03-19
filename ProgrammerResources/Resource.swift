//
//  Resource.swift
//  ProgrammerResources
//
//  Created by Matthew Curran on 3/19/19.
//  Copyright © 2019 Matthew. All rights reserved.
//

import Foundation

struct Resource {
    let name: String
    let description: String
    let url: URL
}

extension Resource {
    init (dictionary: [String: String]) {
        name = dictionary["name"]! as String
        description = dictionary["description"]! as String
        let urlString = dictionary["url"]! as String
        url = URL(string: urlString)!
    }
}
