//
//  MoyaExtensions.swift
//  Alamofire
//
//  Created by  moma on 2019/2/16.
//

import Moya
import SwiftyJSON

// MARK: - Response -> Model
extension Response {
    
    /// Response -> Model
    ///
    /// - Parameters:
    ///   - type: 模型类型
    ///   - modelJson: 模型对应的json数据
    /// - Returns: 模型
    public func map<T: Mappable>(_ type: T.Type) -> T {
        return JSON(data).model(type)
    }
    
    
    public func mapArray<T: Mappable>(_ type: T.Type) -> [T] {
        return JSON(data).arrayValue.compactMap { $0.model(type) }
    }
}
