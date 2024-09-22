//
//  ListView.swift
//  TodoList
//
//  Created by muhammad on 21/09/2024.
//

import SwiftUI

struct ListView: View {
    
    @State var item: [String] = [
    
        "This is the First Item!",
        "This is the Second Item!",
        "This is the third Item!"
    
    ]
    
    var body: some View {
        List{
          
            ForEach(item, id: \.self) { item in
                ListRowView(title: item)
            }
            
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 📝 ")
        .navigationBarItems(
            
            leading: EditButton(),
            
            trailing:
                NavigationLink("Add", destination: AddView())
        
        )
        
        
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
    }
}

#Preview {
    NavigationStack{
        ListView()
    }
}

