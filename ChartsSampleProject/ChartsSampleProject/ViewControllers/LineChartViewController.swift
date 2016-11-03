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
  private let viewModel = LineChartSampleViewModel()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    lineChartCanvasView = LineChartCanvasView.createWithData(data: viewModel.data)
    chartCanvasView.addSubview(lineChartCanvasView)
  }
  
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    
    lineChartCanvasView.frame = chartCanvasView.bounds
  }

}
