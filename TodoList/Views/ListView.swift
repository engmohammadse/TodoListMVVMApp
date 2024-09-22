//
//  ListView.swift
//  TodoList
//
//  Created by muhammad on 21/09/2024.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [ItemModel] = [
        
        ItemModel(title: "This is the First Item!", isCompleted: false),
        ItemModel(title: "This is the Second Item!", isCompleted: true),
        ItemModel(title: "This is the third Item!", isCompleted: false)
    
        
    ]
    
    var body: some View {
        List{
          
            ForEach(items) { item in
               
                ListRowView(item: item)
            }
            .onDelete(perform: deleteItem)
            .onMove(perform: moveItem)
            
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 📝 ")
        .navigationBarItems(
            
            leading: EditButton(),
            
            trailing:
                NavigationLink("Add", destination: AddView()))
      
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int){
        items.move(fromOffsets: from, toOffset: to)
    }
}

#Preview {
    NavigationStack{
        ListView()
    }
}





//old navigationBarItems
//new
//        .toolbar {
//
//
//            ToolbarItem(placement: .topBarLeading) {
//                Button(action: {
//
//
//                }) {
//                    NavigationLink("Add", destination: Text("Destination"))
//
//                }
//            }
//            //
//
//
//            ToolbarItem(placement: .topBarTrailing) {
//                Button(action: {
//                    print("Trailing action")
//                }) {
//                    Text("Add")
//                }
//
//            }
//
//        }// toolbar
