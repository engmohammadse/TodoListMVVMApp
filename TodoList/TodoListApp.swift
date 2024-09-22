//
//  TodoListApp.swift
//  TodoList
//
//  Created by muhammad on 21/09/2024.
//


/*
 
 MVVM Architecture
 
Model - data point
View - UI
ViewModel - manage Models for View
 
 */



import SwiftUI

@main
struct TodoListApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                ListView()
            }
        }
    }
}
