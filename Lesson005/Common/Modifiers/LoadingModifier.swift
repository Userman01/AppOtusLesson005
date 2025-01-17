//
//  LoadingModifier.swift
//  Lesson005
//
//  Created by Петр Постников on 22.09.2024.
//

import SwiftUI

struct LoadingModifier: ViewModifier {
    
    let withLoading: Bool

    func body(content: Content) -> some View {
        if withLoading {
            VStack {
                Divider()
                Spacer()
                ProgressView()
                    .progressViewStyle(.circular)
                Spacer()
            }
        } else {
            content
        }
    }
}
