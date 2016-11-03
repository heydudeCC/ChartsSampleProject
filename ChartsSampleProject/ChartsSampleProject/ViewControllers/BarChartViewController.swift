//
//  BarChartViewController.swift
//  ChartsSampleProject
//
//  Created by Sinta Amanda Tangkudung on 11/2/16.
//  Copyright © 2016 Sinta Amanda Tangkudung. All rights reserved.
//

import UIKit

class BarChartViewController: UIViewController {

  @IBOutlet weak private var chartCanvasView: UIView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let data = [
      BarChartDataModel(value: 96000, color: UIColor.red),
      BarChartDataModel(value: 32000, color: UIColor.brown),
      BarChartDataModel(value: 16000, color: UIColor.purple),
      BarChartDataModel(value: 8000, color: UIColor.green)
    ]
    
    let barChartCanvasView = BarChartCanvasView.createWithData(data: data)
    barChartCanvasView.frame = chartCanvasView.frame
    chartCanvasView.addSubview(barChartCanvasView)
  }

}
