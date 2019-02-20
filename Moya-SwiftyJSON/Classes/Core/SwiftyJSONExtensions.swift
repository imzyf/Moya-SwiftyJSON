//
//  SwiftyJSONExtensions.swift
//  Alamofire
//
//  Created by  moma on 2019/2/16.
//

import Foundation
import SwiftyJSON

public extension JSON {
    
    func model<T: Mappable>(_ type: T.Type) -> T {
        return T(json: self)
    }
    
    func models<T: Mappable>(_ type: T.Type) -> [T] {
        return arrayValue.map { $0.model(type) }
    } 
}

