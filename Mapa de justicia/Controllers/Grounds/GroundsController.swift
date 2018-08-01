//
//  GroundsController.swift
//  Mapa de justicia
//
//  Created by Administrador on 23/05/18.
//  Copyright © 2018 avalogics. All rights reserved.
//

import UIKit

class GroundsController: UIViewController {
    // MARK: - Let-Var
    
    // MARK: - Outlets
    @IBOutlet weak var locationButton: UIButton!
    @IBOutlet weak var globalButton: UIButton!
    
    // MARK: - LifeCycles
    override func viewDidLoad() {
        super.viewDidLoad()

        // setting up general actions/delegates/Core
        setUpActions()
        
        // setting up UI elements to be used through the code
        setUpUI()
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
    // MARK: - SetUps / Funcs
    
    func setUpUI(){
        locationButton.imageView?.contentMode = .center
        globalButton.imageView?.contentMode = .center
        (locationButton.subviews[0] as! UIImageView).contentMode = .scaleAspectFit
        (globalButton.subviews[0] as! UIImageView).contentMode = .scaleAspectFit
        
    }
    
    func setUpActions(){}
    private func gettingData(){}
    
 

}
