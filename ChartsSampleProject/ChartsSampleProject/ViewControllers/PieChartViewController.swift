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
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let pieChartDataPair1 = PieChartDataPair(name: "Angelica", value: 96000)
    let pieChartDataPair2 = PieChartDataPair(name: "Eliza", value: 32000)
    let pieChartDataPair3 = PieChartDataPair(name: "Peggy", value: 16000)
    
    let pieChartData1 = PieChartDataModel(dataPair: pieChartDataPair1, color: UIColor.orange)
    let pieChartData2 = PieChartDataModel(dataPair: pieChartDataPair2, color: UIColor.blue)
    let pieChartData3 = PieChartDataModel(dataPair: pieChartDataPair3, color: UIColor.yellow)
    
    let data = [pieChartData1, pieChartData2, pieChartData3]
    
    pieChartCanvasView = PieChartCanvasView.createWithData(data: data)
    chartCanvasView.addSubview(pieChartCanvasView)
  }
  
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    
    pieChartCanvasView.frame = chartCanvasView.bounds
  }

}
