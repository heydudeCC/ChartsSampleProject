//
//  PieChartViewController.swift
//  ChartsSampleProject
//
//  Created by Sinta Amanda Tangkudung on 11/2/16.
//  Copyright © 2016 Sinta Amanda Tangkudung. All rights reserved.
//

import UIKit

class PieChartViewController: UIViewController {

  @IBOutlet weak private var chartCanvasView: UIView!
  private var pieChartCanvasView: PieChartCanvasView!
  private let viewModel = PieChartSampleViewModel()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    pieChartCanvasView = PieChartCanvasView.createWithData(data: viewModel.data)
    chartCanvasView.addSubview(pieChartCanvasView)
  }
  
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    
    pieChartCanvasView.frame = chartCanvasView.bounds
  }

}
