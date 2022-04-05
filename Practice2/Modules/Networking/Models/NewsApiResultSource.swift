//
// NewsApiResultsSource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct NewsApiResultSource: Codable {

    public var _id: String?
    public var name: String?

    public init(_id: String? = nil, name: String? = nil) {
        self._id = _id
        self.name = name
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
    }

}
