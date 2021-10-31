//
//  Producto.swift
//  OrganicNails
//
//  Created by Archana Verma on 10/3/21.
//

import Foundation

struct Curso: Decodable{
    var nombre:String
    var fecha:String
    var instructor:String
    var precio:String
    var descripcion:String
    
    enum CodingKeys: String, CodingKey {
            case nombre
            case fecha
            case instructor
            case precio
            case descripcion
        }
    init(nombre:String, fecha:String, instructor:String, precio:String, descripcion:String){
        self.nombre = nombre
        self.fecha = fecha
        self.instructor = instructor
        self.precio = precio
        self.descripcion = descripcion
    }

}

typealias Cursos = [Curso]
