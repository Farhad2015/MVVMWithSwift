//
//  ContentView.swift
//  MVVMPractice
//
//  Created by Mahmudur Rahman on 29/11/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = ViewModel()
    
    var body: some View {
        VStack {
            Toggle("Toggle switch", isOn: $vm.isTurnedOn).padding()
            HStack{
                Button {
                    vm.increment()
                } label: {
                    Text("Increment")
                }
                Text("\(vm.counter)").bold().foregroundColor(.gray).padding()
            }
            List(vm.itemList){ item in
                HStack{
                    Text(item.name)
                    Spacer()
                    Text(item.description)
                }
            }.listStyle(.plain)
                .background(.thinMaterial)
            
            Button {
                vm.AddItem()
            } label: {
                Text("Add Item")
            }

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
