//
//  ProductoControlador.swift
//  OrganicNails
//
//  Created by Archana Verma on 10/3/21.
//

import Foundation

class ProductoControlador{
    func fetchProductos(completion: @escaping (Result<Productos, Error>)->Void){
        var urlComponents = URLComponents(string: "http://martinmolina.com.mx/202113/tc2024/equipo2/productos.json")!


        let task = URLSession.shared.dataTask(with: urlComponents.url!) { (data, response, error) in
            let jsonDecoder = JSONDecoder()
            if let data = data{
                do{
                    let productos = try? jsonDecoder.decode([Producto].self, from: data)
                    completion(.success(productos!))
                }
                catch{
                    completion(.failure(error))
                }
            }
            else {
                completion(.failure(error as! Error))
            }
            
        }

        task.resume()
        
    }
        
    }

