//
//  TableCell.swift
//  SearchBarInTable
//
//  Created by Xiaodan Wang on 10/20/17.
//  Copyright © 2017 Xiaodan Wang. All rights reserved.
//

import UIKit

class TableCell: UITableViewCell {

    
    @IBOutlet var nameLbl: UILabel!
    @IBOutlet var categoryLbl: UILabel!
    
    
    func congigureCell(text: String) {
        
        nameLbl.text = text
    }
}
