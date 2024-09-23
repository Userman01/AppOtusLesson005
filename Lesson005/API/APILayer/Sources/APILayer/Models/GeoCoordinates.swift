//
// GeoCoordinates.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GeoCoordinates: Codable, JSONEncodable, Hashable {

    public var city: String?
    public var latitude: Double?
    public var longitude: Double?

    public init(city: String? = nil, latitude: Double? = nil, longitude: Double? = nil) {
        self.city = city
        self.latitude = latitude
        self.longitude = longitude
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case city
        case latitude
        case longitude
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(city, forKey: .city)
        try container.encodeIfPresent(latitude, forKey: .latitude)
        try container.encodeIfPresent(longitude, forKey: .longitude)
    }
}
