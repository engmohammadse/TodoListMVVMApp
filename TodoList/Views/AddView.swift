//
//  AddView.swift
//  TodoList
//
//  Created by muhammad on 22/09/2024.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText: String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    .frame(height: 55)
                    .padding(.horizontal)
                    .background(Color(red: 229 / 255, green: 229 / 255, blue: 229 / 255)
                        .cornerRadius(10)
                )
                
                Button(action: {
                    
                }, label: {
                    Text("Save".uppercased())
                        .foregroundStyle(Color.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
                
                
            }.padding(14)
        }
        .navigationTitle("Add an item 🖋️")
    }
}

#Preview {
    NavigationStack{
        AddView()
    }
}
