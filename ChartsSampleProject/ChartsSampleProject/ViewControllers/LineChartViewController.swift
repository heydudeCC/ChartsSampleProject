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
    
    let coordinatePairs1 = [
      LineChartCoordinatePair(xAxis: 1, yAxis: 11),
      LineChartCoordinatePair(xAxis: 2, yAxis: 14),
      LineChartCoordinatePair(xAxis: 3, yAxis: 16),
      LineChartCoordinatePair(xAxis: 4, yAxis: 17),
      LineChartCoordinatePair(xAxis: 5, yAxis: 18)
    ]
    
    let coordinatePairs2 = [
      LineChartCoordinatePair(xAxis: 2, yAxis: 20),
      LineChartCoordinatePair(xAxis: 3, yAxis: 21),
      LineChartCoordinatePair(xAxis: 4, yAxis: 22),
      LineChartCoordinatePair(xAxis: 5, yAxis: 23),
      LineChartCoordinatePair(xAxis: 6, yAxis: 24),
      LineChartCoordinatePair(xAxis: 7, yAxis: 25),
      LineChartCoordinatePair(xAxis: 8, yAxis: 26),
      LineChartCoordinatePair(xAxis: 9, yAxis: 27),
      LineChartCoordinatePair(xAxis: 10, yAxis: 29)
    ]
    
    let data = [
      LineChartDataModel(coordinatePairs: coordinatePairs1, color: UIColor.orange),
      LineChartDataModel(coordinatePairs: coordinatePairs2, color: UIColor.brown)
    ]
    
    lineChartCanvasView = LineChartCanvasView.createWithData(data: data)
    chartCanvasView.addSubview(lineChartCanvasView)
  }
  
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    
    lineChartCanvasView.frame = chartCanvasView.bounds
  }

}
