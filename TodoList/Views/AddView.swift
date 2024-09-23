//
//  AddView.swift
//  TodoList
//
//  Created by muhammad on 22/09/2024.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var listViewModel : ListViewModel
    @State var textFieldText: String = ""
    
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    
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
                    saveButtonPressed()
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
        .alert(isPresented: $showAlert, content: getAlert)
        
    }
    func saveButtonPressed() {
        if textIsAppropriate(){
            listViewModel.addItem(title: textFieldText)
            dismiss()
        }
        
    }
    
    func textIsAppropriate() -> Bool {
        if textFieldText.count < 3 {
            alertTitle = " Your new to do item must be at  least 3 characters long !!!!"
            showAlert.toggle()
            return false
        }
        return true
    }
    
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
}

#Preview {
    NavigationStack{
        AddView()
    }
    .environmentObject(ListViewModel())
}
