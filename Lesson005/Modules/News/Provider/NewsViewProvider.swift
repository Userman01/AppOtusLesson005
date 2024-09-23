//
//  HomeViewProvider.swift
//  Lesson005
//
//  Created by Петр Постников on 22.09.2024.
//

import Foundation
import APILayer

protocol NewsProviderProtocol {
    func getNewsList(text: String?) async throws -> NewsList
}

struct NewsProvider: NewsViewProviderProtocol {
    
    private var key: String = "JBaqc7Kos5kkJy0S3vN8qhh0rqOK8gKr"
    
    func getNewsList(text: String?) async throws -> NewsList {
        return try await APILayer.SearchNewsAPI.getNewsList(apiKey: key, text: text)
    }
}
