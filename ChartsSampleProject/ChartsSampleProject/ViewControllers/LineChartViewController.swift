//
//  LineChartViewController.swift
//  ChartsSampleProject
//
//  Created by Sinta Amanda Tangkudung on 11/2/16.
//  Copyright © 2016 Sinta Amanda Tangkudung. All rights reserved.
//

import UIKit

class LineChartViewController: UIViewController {

  @IBOutlet weak private var chartCanvasView: UIView!
  private var lineChartCanvasView: LineChartCanvasView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    lineChartCanvasView = LineChartCanvasView.createWithData(data: [LineChartDataModel]())
    chartCanvasView.addSubview(lineChartCanvasView)
  }
  
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    
    lineChartCanvasView.frame = chartCanvasView.bounds
  }

}
