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
    var titulo : String
    var fecha : Date
    var completado : Bool
    var presupuesto : String
    var total : Float
    
    init(titulo: String = "", fecha: Date = .now, completado: Bool = false, presupuesto: String = "", total: Float = 0) {
        self.titulo = titulo
        self.fecha = fecha
        self.completado = completado
        self.presupuesto = presupuesto
        self.total = total
    }
}


