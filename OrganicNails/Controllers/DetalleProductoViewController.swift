//
//  DetalleProductoViewController.swift
//  OrganicNails
//
//  Created by Archana Verma on 10/3/21.
//

import UIKit

class DetalleProductoViewController: UIViewController {
    var producto:Producto?
    @IBOutlet weak var nombreProducto: UILabel!
    @IBOutlet weak var id: UILabel!
    

    
    @IBOutlet weak var precio: UILabel!
    
  
    
    @IBOutlet weak var colores: UITextView!
    
    @IBOutlet weak var descripcion: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        nombreProducto.text = producto?.nombre
        id.text = producto?.id
        precio.text = producto?.precio
        colores.text = producto?.colores
        descripcion.text = producto?.descripcion
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
