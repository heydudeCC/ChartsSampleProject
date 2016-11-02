//
//  MainViewController.swift
//  ChartsSampleProject
//
//  Created by Sinta Amanda Tangkudung on 11/2/16.
//  Copyright © 2016 Sinta Amanda Tangkudung. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    let lineChartVC = LineChartViewController()
    let pieChartVC = PieChartViewController()
    let barChartVC = BarChartViewController()
    
    lineChartVC.title = "Line"
    pieChartVC.title = "Pie"
    barChartVC.title = "Bar"
    
    viewControllers = [lineChartVC, pieChartVC, barChartVC]
    
    selectedIndex = 0
  }

}
