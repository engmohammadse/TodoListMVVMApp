//
//  ListRowView.swift
//  TodoList
//
//  Created by muhammad on 21/09/2024.
//

import SwiftUI

struct ListRowView: View {
    
    
    let item: ItemModel
    
    
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ?  "checkmark.circle" : "circle")
                .foregroundStyle( item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}


struct ListRowView_Previews: PreviewProvider{
    
    static var item1 = ItemModel(title: "First item", isCompleted: false)
    static var item2 = ItemModel(title: "second item", isCompleted: true)
    
    static var previews: some View{
        
        VStack {
            ListRowView(item: item1)
            ListRowView(item: item2)
        }
        //.previewLayout(.sizeThatFits)
        
    }
}
