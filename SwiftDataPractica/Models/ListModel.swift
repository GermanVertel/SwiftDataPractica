//
//  ListModel.swift
//  SwiftDataPractica
//
//  Created by German David Vertel Narvaez on 29/09/24.
//

import Foundation
import SwiftData

// modelo de la base de datos, funcional como el modelo relacinal de una BD
@Model
final class ListModel {
    @Attribute(.unique) var id: String
    var titulo : String
    var fecha : Date
    var completado : Bool
    var presupuesto : String
    var total : Float
    
    
    @Relationship(deleteRule: .cascade)
    var relationArticulos: [ArticulosModel]
    
    init(id: String = UUID().uuidString, titulo: String = "", fecha: Date = .now, completado: Bool = false, presupuesto: String = "", total: Float = 0, relationArticulos: [ArticulosModel] = []) {
        self.id = id
        self.titulo = titulo
        self.fecha = fecha
        self.completado = completado
        self.presupuesto = presupuesto
        self.total = total
        self.relationArticulos = relationArticulos
    }
}


