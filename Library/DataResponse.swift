//
//  DataResponse.swift
//  Library
//
//  Created by Ahn on 2020/05/24.
//  Copyright © 2020 ozofweird. All rights reserved.
//

import ObjectMapper

struct FinalResponse {
    var name: String!
    var gender: String!
}

extension FinalResponse: Mappable {
    init?(map: Map) {
    }
    
    mutating func mapping(map: Map) {
        name <- map["name"]
        gender <- map["gender"]
    }
    
}

struct MiddleResponse {
    var zero: FinalResponse!
    var one: FinalResponse!
}

extension MiddleResponse: Mappable {
    init?(map: Map) {
    }
    
    mutating func mapping(map: Map) {
        zero <- map["0"]
        one <- map["1"]
    }
    
}

struct FirstResponse {
//    var result: [MiddleResponse]
    var result: MiddleResponse!
    var code: Int!
    var message: String!
}

extension FirstResponse: Mappable {
    init?(map: Map) {
    }
    
    mutating func mapping(map: Map) {
        result <- map["result"]
        code <- map["code"]
        message <- map["message"]
    }
    
}
