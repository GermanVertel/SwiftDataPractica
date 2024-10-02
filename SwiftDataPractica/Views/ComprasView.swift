//
//  ComprasView.swift
//  SwiftDataPractica
//
//  Created by German David Vertel Narvaez on 2/10/24.
//

import SwiftUI
import SwiftData

struct ComprasView: View {
    
    @Bindable var itemList : ListModel
    @Environment(\.modelContext) var context
    @Environment(\.dismiss) var dismiss
    
    @State private var articulo = ""
    @State private var precio = ""
    @State private var cantidad = 1
    
    @FocusState private var isFocus : Bool
    
    var body: some View {
        VStack{
            VStack{
                TextField("Articulo", text: $articulo)
                    .textFieldStyle(.roundedBorder)
                    .focused($isFocus)
                HStack{
                    TextField("Precio", text: $precio)
                        .keyboardType(.decimalPad)
                        .textFieldStyle(.roundedBorder)
                        .frame(width: 100)
                    Spacer()
                    //contador
                }
                HStack{
                    Button{
                        //
                    } label: {
                        Text("Agregar")
                    }
                    Spacer()
                    Text("Presupuesto: $\(itemList.presupuesto)").bold()
                }
               
            }.padding(.all)
            
            List{
                Section("Carrito"){
                    
                }
            }
        }.navigationTitle(itemList.titulo)
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct ComprasView_Previews: PreviewProvider {
    static var previews: some View {
        // Crear un ejemplo de ListModel con datos ficticios
        let exampleItem = ListModel(titulo: "Ejemplo", presupuesto: "100")

        // Pasar el ejemplo a ComprasView
        ComprasView(itemList: exampleItem)
    }
}
