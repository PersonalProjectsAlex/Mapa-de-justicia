//
//  PagerController.swift
//  Mapa de justicia
//
//  Created by Administrador on 24/05/18.
//  Copyright © 2018 avalogics. All rights reserved.
//

import UIKit
import XLPagerTabStrip
import HexColors

class PagerController: ButtonBarPagerTabStripViewController {
    // MARK: - Let-Var
    
    // MARK: - Outlets
    
    // MARK: - LifeCycles
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // setting up UI elements to be used throught the code
        setUpUI()
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
    }
    
    
    // MARK: - SetUps / Funcs
    
    func setUpUI(){
        
        //Calling Pager
        setUpPager()
        
    }
    
    //Setting pages
    override public func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let child_1 = Core.shared.setStoryBoardName(storyboard: Constants.documentationStoryboard, controller: Constants.documentationController, at: self)
        let child_2 = Core.shared.setStoryBoardName(storyboard: Constants.documentationStoryboard, controller: Constants.statisticsController, at: self)
        
        return [child_1,child_2]
        
    }
    
    //Setting Pager
    func setUpPager(){
        settings.style.buttonBarItemBackgroundColor = .white
        settings.style.buttonBarItemTitleColor = .gray
        buttonBarView.selectedBar.backgroundColor = HexColor(Colors.mainColor)
        buttonBarView.backgroundColor = .white
        settings.style.buttonBarMinimumLineSpacing = 0
        settings.style.selectedBarHeight = 0.1
        settings.style.buttonBarItemsShouldFillAvailiableWidth = true
        settings.style.buttonBarLeftContentInset = 0
        settings.style.buttonBarRightContentInset = 0
        settings.style.buttonBarItemFont = .boldSystemFont(ofSize: 13)
        settings.style.buttonBarItemLeftRightMargin = 0
        settings.style.buttonBarItemLeftRightMargin = 0
    }
    
    
    
    
}





