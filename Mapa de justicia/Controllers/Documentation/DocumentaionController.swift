//
//  DocumentaionController.swift
//  Mapa de justicia
//
//  Created by Administrador on 24/05/18.
//  Copyright © 2018 avalogics. All rights reserved.
//

import UIKit
import XLPagerTabStrip
import HexColors

class DocumentaionController: UIViewController,IndicatorInfoProvider {
    
    
    
    // MARK: - Let-Var
    
    // MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    
    
    // MARK: - LifeCycles
    override func viewDidLoad() {
        super.viewDidLoad()

        // setting up general actions/delegates/Core
        setUpActions()
        
    }
   
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
    
    // MARK: - SetUps / Funcs
    
    func setUpUI(){}
    
    func setUpActions(){
        //Delegating tableview
        tableView.delegate = self
        tableView.dataSource = self
        
        //Set Cell Identifier
        Core.shared.registerCell(at: tableView, named: Constants.documentationCell)

    }
    
    private func gettingData(){}

    
    //Settiomng indicator tab
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "Documentación")
    }
    

}

extension DocumentaionController: UITableViewDelegate, UITableViewDataSource{
     // MARK: - Table view data source
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Constants.documentationCell, for: indexPath) as? DocumentationCell else { return UITableViewCell() }
        
        //Color per cell
        if ( indexPath.row % 2 == 0 ){
            cell.colorView.backgroundColor = HexColor(Colors.mainColor)
        }
        else{
            cell.colorView.backgroundColor = HexColor(Colors.documentationSecondCell)
        }
        
        //Bring to front button
        cell.bringSubview(toFront: cell.downloadButton)
        return cell
    }
    
}
