//
//  SegmentedControlViewModel.swift
//  Lesson005
//
//  Created by Петр Постников on 22.09.2024.
//

import SwiftUI

class SegmentedControlViewModel: ObservableObject {
    
    @Published var selected: SegmentedControlSelectedType = .sport
    @Published var presentModel: [SegmentedControlPresentModel] = .init()
    
    init() {
        setupConfiguration()
    }
    
    private func setupConfiguration() {
        presentModel = [
            SegmentedControlPresentModel(title: "Спорт", tag: .sport),
            SegmentedControlPresentModel(title: "Мода", tag: .fashion),
            SegmentedControlPresentModel(title: "Криминал", tag: .criminal)
        ]
    }
}
