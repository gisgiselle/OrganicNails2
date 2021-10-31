//
//  Producto.swift
//  OrganicNails
//
//  Created by Archana Verma on 10/3/21.
//

import Foundation

struct Producto: Decodable{
    var nombre:String
    var id:String
    var colores:String
    var precio:String
    var descripcion:String
    
    enum CodingKeys: String, CodingKey {
            case nombre
            case descripcion
            case id
            case colores
            case precio
        }
    init(nombre:String, id:String, colores:String, precio:String, descripcion:String){
        self.nombre = nombre
        self.id = id
        self.colores = colores
        self.precio = precio
        self.descripcion = descripcion
    }

}

typealias Productos = [Producto]
