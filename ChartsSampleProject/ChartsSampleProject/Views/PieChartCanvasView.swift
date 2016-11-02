//
//  PieChartCanvasView.swift
//  ChartsSampleProject
//
//  Created by Sinta Amanda Tangkudung on 11/2/16.
//  Copyright © 2016 Sinta Amanda Tangkudung. All rights reserved.
//

import UIKit
import Charts

class PieChartCanvasView: UIView, ChartDrawer {

  @IBOutlet weak private var pieChartView: PieChartView!
  private var data: [PieChartDataModel]!
  
  static func createWithData(data: [PieChartDataModel]) -> PieChartCanvasView {
    let pieChartCanvasView = Bundle.main.loadNibNamed("PieChartCanvasView", owner: nil, options: nil)?[0] as! PieChartCanvasView
    pieChartCanvasView.data = data
    pieChartCanvasView.drawChart()
    return pieChartCanvasView
  }
  
  func updateData(data: [PieChartDataModel]) {
    self.data = data
    drawChart()
  }
  
  func drawChart() {
    let pieChartData = DataConverter.createPieChartData(pieChartData: data)
    pieChartView.data = pieChartData
  }
  
}
