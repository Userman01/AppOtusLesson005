//
//  ContentView.swift
//  Lesson001
//
//  Created by Петр Постников on 30.08.2024.
//

import SwiftUI

struct MainView: View {
    
    @StateObject private var naviganionCoordinator: NavigationCoordinator = .init()
    
    var body: some View {
        NavigationStack(path: $naviganionCoordinator.path) {
            SegmentedControlView()
                .navigationDestination()
        }
        .environmentObject(naviganionCoordinator)
    }
}

#Preview {
    MainView()
}

