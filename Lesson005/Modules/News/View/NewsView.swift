//
//  PageOneView.swift
//  Lesson001
//
//  Created by Петр Постников on 03.09.2024.
//

import SwiftUI

struct NewsView: View {
    
    @StateObject var viewModel: NewsViewModel
    
    var body: some View {
        List(viewModel.presentModel.cellTypes, id: \.self) { cellType in
            let isElemLast = viewModel.presentModel.cellTypes.needToLoad(cellType)
            let isLoading = isElemLast && viewModel.isLoading == false
            switch cellType {
            case let .text(string):
                NewsCell(title: string)
                    .modifier(LoadingModifier(withLoading: isLoading))
                    .onAppear {
                        if isElemLast {
                            viewModel.loadNext()
                        }
                    }
            }
        }
        .background(Color.red)
    }
}

#Preview {
    MainView()
}
