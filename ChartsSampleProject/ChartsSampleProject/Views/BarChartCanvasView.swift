//
//  BarChartCanvasView.swift
//  ChartsSampleProject
//
//  Created by Sinta Amanda Tangkudung on 11/2/16.
//  Copyright © 2016 Sinta Amanda Tangkudung. All rights reserved.
//

import UIKit
import Charts

class BarChartCanvasView: UIView, ChartDrawer {

  @IBOutlet weak var barChartView: BarChartView!
  private var data: [BarChartDataModel]!
  
  static func createWithData(data: [BarChartDataModel]) -> BarChartCanvasView {
    let barChartCanvasView = Bundle.main.loadNibNamed("BarChartCanvasView", owner: nil, options: nil)?[0] as! BarChartCanvasView
    barChartCanvasView.data = data
    barChartCanvasView.drawChart()
    return barChartCanvasView
  }
  
  func updateData(data: [BarChartDataModel]) {
    self.data = data
    drawChart()
  }
  
  func drawChart() {
    let barChartData = DataConverter.createBarChartData(barChartData: data)
    barChartView.data = barChartData
  }
  
}
