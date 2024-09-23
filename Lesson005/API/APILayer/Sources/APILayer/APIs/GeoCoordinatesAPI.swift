//
// GeoCoordinatesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class GeoCoordinatesAPI {

    /**
     geo coordinates
     
     - parameter apiKey: (header) API key 
     - parameter location: (query) The address or name of the location. 
     - returns: GeoCoordinates
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getGeoCoordinates(apiKey: String, location: String) async throws -> GeoCoordinates {
        return try await getGeoCoordinatesWithRequestBuilder(apiKey: apiKey, location: location).execute().body
    }

    /**
     geo coordinates
     - GET /world_news/geo-coordinates
     - parameter apiKey: (header) API key 
     - parameter location: (query) The address or name of the location. 
     - returns: RequestBuilder<GeoCoordinates> 
     */
    open class func getGeoCoordinatesWithRequestBuilder(apiKey: String, location: String) -> RequestBuilder<GeoCoordinates> {
        let localVariablePath = "/world_news/geo-coordinates"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "location": (wrappedValue: location.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            "apiKey": apiKey.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GeoCoordinates>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }
}