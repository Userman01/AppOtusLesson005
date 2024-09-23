//
//  PageOneViewModel.swift
//  Lesson001
//
//  Created by Петр Постников on 03.09.2024.
//

import Foundation
import Combine
import APILayer

class NewsViewModel: ObservableObject {
    
    @Published var presentModel: NewsPresentModel = .init(cellTypes: [])
    @Published var result: NewsList?
    @Published var isLoading: Bool = true
    
    private var inOutModel: NewsInOutModel
    
    private var provider: NewsProviderProtocol = NewsProvider()
    private var cancellables = Set<AnyCancellable>()
    
    init(inOutModel: NewsInOutModel) {
        self.inOutModel = inOutModel
        setupConfiguration()
        setupObservers()
    }
    
    private func setupConfiguration() {
        handleModelUpdate(inOutModel.selectedType)
    }
    
    private func setupObservers() {
        $result
            .receive(on: DispatchQueue.main)
            .sink { [weak self] newsList in
                guard let newsList else { return }
                self?.setPresentModel(newsList: newsList)
        }
        .store(in: &cancellables)
    }
    
    private func handleModelUpdate(_ model: SegmentedControlSelectedType) {
        let text: String
        switch model {
        case .sport:
            text = "sport"
        case .fashion:
            text = "fashion"
        case .criminal:
            text = "criminal"
        }
        getNewsList(text: text)
    }
    
    private func getNewsList(text: String) {
        isLoading = true
        
        Task {
            guard let result = try? await provider.getNewsList(text: text) else { return }
            DispatchQueue.main.async { [weak self] in
                self?.result = result
            }
        }
    }
    
    private func setPresentModel(newsList: NewsList) {
        guard let news = newsList.news else { return }
        isLoading = false
        news.forEach {[weak self] news in
            guard let title = news.title else { return }
            self?.presentModel.cellTypes.append(.text(title))
        }
    }
    
    func loadNext() {
        handleModelUpdate(inOutModel.selectedType)
    }
}
