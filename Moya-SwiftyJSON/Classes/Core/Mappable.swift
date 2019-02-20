//
//  JSONable.swift
//  Moya-SwiftyJSON
//
//  Created by  moma on 2019/2/16.
//

import SwiftyJSON

/// BaseMappable should not be implemented directly. Mappable or StaticMappable should be used instead
public protocol BaseMappable {
    /// This function is where all variable mappings should occur. It is executed by Mapper during the mapping (serialization and deserialization) process.
    mutating func mapping(json: JSON)
}

public protocol Mappable: BaseMappable {
    /// This function can be used to validate JSON prior to mapping. Return nil to cancel mapping at this point
    init()
}

public extension Mappable {
    
    mutating func mapping(json: JSON) {
    }
    
    public init(json: JSON) {
        self.init()
        mapping(json: json)
    }
    
    func reflectModel<T: Mappable>(_ type: T.Type)  {
        let mirror = Mirror(reflecting: type)
        readAllChildrenFrom(mirror: mirror)
    }
}

fileprivate func readAllChildrenFrom(mirror: Mirror) -> [(String, Any)] {
    var children = [(label: String?, value: Any)]()
    let mirrorChildrenCollection = AnyRandomAccessCollection(mirror.children)!
    children += mirrorChildrenCollection
    
    var currentMirror = mirror
    while let superclassChildren = currentMirror.superclassMirror?.children {
        let randomCollection = AnyRandomAccessCollection(superclassChildren)!
        children += randomCollection
        currentMirror = currentMirror.superclassMirror!
    }
    var result = [(String, Any)]()
    children.forEach { (child) in
        if let _label = child.label {
            result.append((_label, child.value))
        }
    }
    return result
}



