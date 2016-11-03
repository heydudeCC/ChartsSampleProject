//
//  LineChartCanvasView.swift
//  ChartsSampleProject
//
//  Created by Sinta Amanda Tangkudung on 11/2/16.
//  Copyright © 2016 Sinta Amanda Tangkudung. All rights reserved.
//

import UIKit
import Charts

class LineChartCanvasView: UIView, ChartDrawer {

  @IBOutlet weak private var lineChartView: LineChartView!
  private var data: [LineChartDataModel]!

  static func createWithData(data: [LineChartDataModel]) -> LineChartCanvasView {
    let lineChartCanvasView = Bundle.main.loadNibNamed("LineChartCanvasView", owner: nil, options: nil)?[0] as! LineChartCanvasView
    lineChartCanvasView.data = data
    lineChartCanvasView.drawChart()
    return lineChartCanvasView
  }
  
  func updateData(data: [LineChartDataModel]) {
    self.data = data
    drawChart()
  }
  
  func drawChart() {
    let lineChartData = DataConverter.createLineChartData(lineChartData: data)
    lineChartView.data = lineChartData
    customizeView()
  }
  
  func customizeView() {
    lineChartView.doubleTapToZoomEnabled = false
    lineChartView.chartDescription = nil
  }
  
}
