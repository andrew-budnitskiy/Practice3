//
// NewsApiSourcesSources.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct NewsApiSource: Codable, Identifiable {

    public var id = UUID()

    public var _id: String?
    public var name: String?
    public var _description: String?
    public var url: String?
    public var category: String?
    public var language: String?
    public var country: String?

    public init(_id: String? = nil, name: String? = nil, _description: String? = nil, url: String? = nil, category: String? = nil, language: String? = nil, country: String? = nil) {
        self._id = _id
        self.name = name
        self._description = _description
        self.url = url
        self.category = category
        self.language = language
        self.country = country
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case _description = "description"
        case url
        case category
        case language
        case country
    }

}

extension NewsApiSource: NewsSourceProtocol {

    var title: String {
        return self.name.or("the news source title is empty")
    }

    var identifier: String {
        return self._id.or("-")
    }




}
