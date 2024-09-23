//
//  SegmentedControlView.swift
//  Lesson005
//
//  Created by Петр Постников on 22.09.2024.
//

import Foundation

import SwiftUI

struct SegmentedControlView: View {
    
    @StateObject var viewModel: SegmentedControlViewModel = .init()
    
    var body: some View {
        VStack {
            Picker(selection: $viewModel.selected) {
                ForEach(viewModel.presentModel, id: \.self) { model in
                    Text(model.title).tag(model.tag)
                }
            } label: {
                Text(String.empty)
            }
            .pickerStyle(.segmented)
            
            switch viewModel.selected {
            case .sport:
                NewsView(viewModel: NewsViewModel(inOutModel: NewsInOutModel(selectedType: viewModel.selected)))
            case .criminal:
                NewsView(viewModel: NewsViewModel(inOutModel: NewsInOutModel(selectedType: viewModel.selected)))
            case .fashion:
                NewsView(viewModel: NewsViewModel(inOutModel: NewsInOutModel(selectedType: viewModel.selected)))
            }
        }
    }
}

#Preview {
    MainView()
}
