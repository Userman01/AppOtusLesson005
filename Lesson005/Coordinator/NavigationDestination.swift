//
//  View.swift
//  Lesson001
//
//  Created by Петр Постников on 04.09.2024.
//

import SwiftUI

extension View {
    
    func navigationDestination() -> some View {
       self.navigationDestination(for: NavigationCoordinatorType.self) { navigationCoordinatorType in
            switch navigationCoordinatorType {
            case let .text(string):
                Text(string)
            }
        }
    }
}
