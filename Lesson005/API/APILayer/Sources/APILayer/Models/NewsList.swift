//
// NewsList.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct NewsList: Codable, JSONEncodable, Hashable {

    public var available: Int?
    public var news: [News]?
    public var number: Int?
    public var offset: Int?

    public init(available: Int? = nil, news: [News]? = nil, number: Int? = nil, offset: Int? = nil) {
        self.available = available
        self.news = news
        self.number = number
        self.offset = offset
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case available
        case news
        case number
        case offset
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(available, forKey: .available)
        try container.encodeIfPresent(news, forKey: .news)
        try container.encodeIfPresent(number, forKey: .number)
        try container.encodeIfPresent(offset, forKey: .offset)
    }
}

