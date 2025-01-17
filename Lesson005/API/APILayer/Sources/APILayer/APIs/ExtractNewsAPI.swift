//
// ExtractNewsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class ExtractNewsAPI {

    /**
     extract news
     
     - parameter apiKey: (header) API key 
     - parameter analyze: (query) Whether to analyze the news. 
     - parameter url: (query) Source url. 
     - returns: ExtractNews
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getExtractNews(apiKey: String, analyze: String, url: String) async throws -> ExtractNews {
        return try await getExtractNewsWithRequestBuilder(apiKey: apiKey, analyze: analyze, url: url).execute().body
    }

    /**
     extract news
     - GET /world_news/extract-news
     - parameter apiKey: (header) API key 
     - parameter analyze: (query) Whether to analyze the news. 
     - parameter url: (query) Source url. 
     - returns: RequestBuilder<ExtractNews> 
     */
    open class func getExtractNewsWithRequestBuilder(apiKey: String, analyze: String, url: String) -> RequestBuilder<ExtractNews> {
        let localVariablePath = "/world_news/extract-news"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "analyze": (wrappedValue: analyze.encodeToJSON(), isExplode: true),
            "url": (wrappedValue: url.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            "apiKey": apiKey.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ExtractNews>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }
}
