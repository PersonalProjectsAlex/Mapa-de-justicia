//
//  DocumentationCell.swift
//  Mapa de justicia
//
//  Created by Administrador on 24/05/18.
//  Copyright © 2018 avalogics. All rights reserved.
//

import UIKit
import HexColors

class DocumentationCell: UITableViewCell {

    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var downloadButton: UIButton!
    
    
    
    @IBAction func downloadAction(_ sender: UIButton) {
        print("Touched")
        if let color = HexColor(Colors.mainColor){
            
        }
    }
    
}
