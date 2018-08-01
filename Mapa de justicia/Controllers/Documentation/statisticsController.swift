//
//  statisticsController.swift
//  Mapa de justicia
//
//  Created by Administrador on 24/05/18.
//  Copyright © 2018 avalogics. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class statisticsController: UIViewController ,IndicatorInfoProvider {
 
    // MARK: - Let-Var
    
    // MARK: - Outlets
    
    // MARK: - LifeCycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
    
    // MARK: - SetUps / Funcs
    
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "Documentacon")
    }
    
    
}


