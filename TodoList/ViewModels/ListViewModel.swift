//
//  ListViewModel.swift
//  TodoList
//
//  Created by muhammad on 23/09/2024.
//

import Foundation

/*
 CRUD FUNCTION
 
 Create
 Read
 Update
 Delete
 
 */


class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = []
    
    
    init() {
        getItems()
    }
    
    
    
    func getItems() {
        let newItems = [
            ItemModel(title: "This is the First Item!", isCompleted: false),
            ItemModel(title: "This is the Second Item!", isCompleted: true),
            ItemModel(title: "This is the third Item!", isCompleted: false)
        ]
        items.append(contentsOf: newItems)
    }
    
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int){
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    func updateItem(item: ItemModel) {
  
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index] = item.updateCompletion()
        }
        
    }
}
