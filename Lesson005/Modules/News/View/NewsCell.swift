//
//  NewsCell.swift
//  Lesson005
//
//  Created by Петр Постников on 22.09.2024.
//

import SwiftUI

struct NewsCell: View {
    
    let title: String

    var body: some View {
        VStack {
            Text(title)
        }
        .backgroundStyle(.clear)
    }
}
