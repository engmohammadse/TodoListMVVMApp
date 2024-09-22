//
//  ListRowView.swift
//  TodoList
//
//  Created by muhammad on 21/09/2024.
//

import SwiftUI

struct ListRowView: View {
    
    
    let title: String
    
    
    var body: some View {
        HStack{
            Image(systemName: "checkmark.circle")
            Text(title)
            Spacer()
        }
    }
}


#Preview {
    ListRowView(title: "This is the First Item!")
}
