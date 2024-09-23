//
//  HomeViewProvider.swift
//  Lesson005
//
//  Created by Петр Постников on 22.09.2024.
//

import Foundation
import APILayer

protocol NewsProviderProtocol {
    func getNewsList(text: String) async throws -> NewsList
}

class NewsProvider: NewsProviderProtocol {
    
    private var key: String = "JBaqc7Kos5kkJy0S3vN8qhh0rqOK8gKr"
    private var dataStore = NewsDataStore()
    
    func getNewsList(text: String) async throws -> NewsList {
        if let result = dataStore.model[text] {
            return result
        } else {
            let result = try await APILayer.SearchNewsAPI.getNewsList(apiKey: key, text: text)
            dataStore.model[text] = result
            return result
        }
    }
}
