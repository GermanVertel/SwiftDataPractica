//
//  ContentView.swift
//  SwiftDataPractica
//
//  Created by German David Vertel Narvaez on 29/09/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
  
    @Query private var items: [ListModel]
    @State private var show = false

    var body: some View {
        NavigationStack{
            List{
                Section("Activos"){
                    ForEach(items) { item in
                        Text(item.titulo)
                    }
                }
                Section("Completadas"){
                    
                }
            }
            .navigationTitle("Mis compras")
            .toolbar{
                Button(action: {
                    show.toggle()
                }, label: {
                    Image(systemName: "plus")
                })
            }
        }
        .sheet(isPresented: $show, content: {
            NavigationStack{
                addView()
            }.presentationDetents([.medium])
        })
    }
}
#Preview {
    ContentView()
       
}
