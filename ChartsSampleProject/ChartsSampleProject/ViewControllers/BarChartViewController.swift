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
  private var viewModel = BarChartSampleViewModel()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let barChartCanvasView = BarChartCanvasView.createWithData(data: viewModel.data)
    barChartCanvasView.frame = chartCanvasView.frame
    chartCanvasView.addSubview(barChartCanvasView)
  }

}
