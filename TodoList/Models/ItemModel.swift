//
//  ItemModel.swift
//  TodoList
//
//  Created by muhammad on 22/09/2024.
//

import Foundation

struct ItemModel: Identifiable {
    
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
