//
// SourcesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class SourcesAPI {
    /**
     Get news sources list

     - parameter apiKey: (query)  (optional, default to c74e894ef21646e28347927d57a85b87)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func newsApiSources(apiKey: String? = "c74e894ef21646e28347927d57a85b87", completion: @escaping ((_ data: SourceNewsApi?,_ error: Error?) -> Void)) {
        newsApiSourcesWithRequestBuilder(apiKey: apiKey).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get news sources list
     - GET /newsapi.org/v2/top-headlines/sources
     - 

     - examples: [{contentType=application/json, example={
  "sources" : [ {
    "country" : "country",
    "name" : "name",
    "description" : "description",
    "language" : "language",
    "id" : "id",
    "category" : "category",
    "url" : "url"
  }, {
    "country" : "country",
    "name" : "name",
    "description" : "description",
    "language" : "language",
    "id" : "id",
    "category" : "category",
    "url" : "url"
  } ],
  "status" : "status"
}}]
     - parameter apiKey: (query)  (optional, default to c74e894ef21646e28347927d57a85b87)

     - returns: RequestBuilder<SourceNewsApi> 
     */
    open class func newsApiSourcesWithRequestBuilder(apiKey: String? = nil) -> RequestBuilder<SourceNewsApi> {
        let path = "/newsapi.org/v2/top-headlines/sources"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "apiKey": apiKey
        ])


        let requestBuilder: RequestBuilder<SourceNewsApi>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Get news sources list

     - parameter apikey: (query)  (optional, default to pub_6104174df9dc7974a0cc89668d388e41d47c)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func newsDataSources(apikey: String? = nil, completion: @escaping ((_ data: SourceNewsData?,_ error: Error?) -> Void)) {
        newsDataSourcesWithRequestBuilder(apikey: apikey).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get news sources list
     - GET /newsdata.io/api/1/sources
     - 

     - examples: [{contentType=application/json, example={
  "results" : [ {
    "country" : [ "country", "country" ],
    "name" : "name",
    "description" : "description",
    "language" : [ "language", "language" ],
    "id" : "id",
    "category" : [ "category", "category" ],
    "url" : "url"
  }, {
    "country" : [ "country", "country" ],
    "name" : "name",
    "description" : "description",
    "language" : [ "language", "language" ],
    "id" : "id",
    "category" : [ "category", "category" ],
    "url" : "url"
  } ],
  "status" : "status"
}}]
     - parameter apikey: (query)  (optional, default to pub_6104174df9dc7974a0cc89668d388e41d47c)

     - returns: RequestBuilder<SourceNewsData> 
     */
    open class func newsDataSourcesWithRequestBuilder(apikey: String? = nil) -> RequestBuilder<SourceNewsData> {
        let path = "/newsdata.io/api/1/sources"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "apikey": apikey
        ])


        let requestBuilder: RequestBuilder<SourceNewsData>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
}