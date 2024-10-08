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
    //@Query(sort: \ListModel.titulo, order: .forward) private var items: [ListModel]
    //@Query(filter: #Predicate<ListModel> { $0.titulo.contains("Primer compra") }, sort: \ListModel.titulo, order: .forward)
   // private var items: [ListModel]

    @State private var show = false

    var body: some View {
        NavigationStack {
            List {
                Section("Activos") {
                    ForEach(items) { item in
                        NavigationLink(value: item) {
                            CardView(item: item)
                        }
                        .swipeActions {
                            Button(role: .destructive) {
                                // Accion de eliminar
                            } label: {
                                Image(systemName: "trash")
                            }
                        }
                    }
                }

                Section("Completadas") {
                    // Aquí puedes añadir las tareas completadas si lo necesitas
                }
            }
            .navigationTitle("Mis compras")
            .toolbar {
                Button(action: {
                    show.toggle()
                }) {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $show) {
                NavigationStack {
                    addView()
                        .presentationDetents([.medium])
                }
            }
            // Define la navegación destino para ListModel
            .navigationDestination(for: ListModel.self) { item in
                CardView(item: item)  // Vista de destino
            }
        }
    }
}



struct CardView: View  {
    var item: ListModel
    var body:some View{
        HStack{
            Circle()
                .foregroundStyle(item.completado ? .green : .red)
                .frame(width: 10, height: 10)
            VStack(alignment:.leading ){
                Text(item.titulo)
                    .bold()
                Text("\(item.fecha, format: Date.FormatStyle(date: .numeric, time: .shortened))")
                    .font(.callout)
                    .foregroundStyle(.gray)
            }
        }
    }
}







#Preview {
    ContentView()
       
}

