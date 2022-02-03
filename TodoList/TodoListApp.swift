//
//  TodoListApp.swift
//  TodoList
//
//  Created by Chinmoy Biswas on 3/2/22.
//

import SwiftUI

/*
 MVMM Architechture
 
 Model - data point
 View - UI
 ViewModel - Manages Models for View
 
 */

@main
struct TodoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
