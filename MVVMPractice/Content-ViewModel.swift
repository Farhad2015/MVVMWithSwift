//
//  Content-ViewModel.swift
//  MVVMPractice
//
//  Created by Mahmudur Rahman on 29/11/22.
//

import Foundation
import SwiftUI

extension ContentView {
    @MainActor class ViewModel: ObservableObject {
        @Published var isTurnedOn: Bool = false
        @Published var counter = 0
        @Published var itemList = [Item]()
        
        func increment(){
            counter += 1
        }
        
        func AddItem(){
            let randomItems = ["Playstation", "Xbox", "Nintendo Wii", "Gamboy"]
            let item = randomItems.randomElement()!
            
            let newItem = Item(name: item, description: "item: \(itemList.count + 1)")
            withAnimation {
                itemList.insert(newItem, at: 0)
            }
        }
    }
}
