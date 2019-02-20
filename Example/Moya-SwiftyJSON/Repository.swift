//
//  r.swift
//  Moya-SwiftyJSON_Example
//
//  Created by  moma on 2019/2/16.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation
import SwiftyJSON
import Moya_SwiftyJSON

struct Repository: Mappable {
    
    var name = ""
    var size = 0
    
    init() {
    }
    
    mutating func mapping(json: JSON) {
        name = json["name"].stringValue
        size = json["size"].intValue
    }
}
 
