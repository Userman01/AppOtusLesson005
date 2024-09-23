//
//  Coordinator.swift
//  Lesson001
//
//  Created by Петр Постников on 03.09.2024.
//

import SwiftUI

class NavigationCoordinator: ObservableObject {
    @Published var path: NavigationPath = .init()
    
    func navigationTo(_ coordinatorType: NavigationCoordinatorType) {
        path.append(coordinatorType)
    }
}
