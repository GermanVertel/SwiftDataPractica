//
//  addView.swift
//  SwiftDataPractica
//
//  Created by German David Vertel Narvaez on 29/09/24.
//

import SwiftUI

struct addView: View {
    
   @State private var item = ListModel()
    @Environment(\.modelContext) var context
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        List {
            TextField("Titulo", text: $item.titulo)
            TextField("Presupuesto", text: $item.presupuesto)
                .keyboardType(.numberPad)
            DatePicker("Fecha", selection: $item.fecha)
            Button(action: {
                withAnimation{
                    context.insert(item)
                    dismiss()
                }
            }, label: {
                Text("Guardar")
            })
        }
    }
}

#Preview {
    addView()
}
