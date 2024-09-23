//
//  PageOneModel.swift
//  Lesson001
//
//  Created by Петр Постников on 04.09.2024.
//

import Foundation

struct NewsPresentModel {
    var cellTypes: [NewsPresentModelCellType]
}

enum NewsPresentModelCellType: Hashable, Identifiable {
    case text(String)
    
    var id: UUID {
        return UUID()
    }
}
