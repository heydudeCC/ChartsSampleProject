//
//  LineChartCanvasView.swift
//  ChartsSampleProject
//
//  Created by Sinta Amanda Tangkudung on 11/2/16.
//  Copyright © 2016 Sinta Amanda Tangkudung. All rights reserved.
//

import UIKit
import Charts

class LineChartCanvasView: UIView {

  @IBOutlet weak fileprivate var lineChartView: LineChartView!
  @IBOutlet weak fileprivate var selectedValueLabel: UILabel!
  fileprivate var data: [LineChartDataModel]!

  static func createWithData(data: [LineChartDataModel]) -> LineChartCanvasView {
    let lineChartCanvasView = Bundle.main.loadNibNamed("LineChartCanvasView", owner: nil, options: nil)?[0] as! LineChartCanvasView
    lineChartCanvasView.data = data
    lineChartCanvasView.setLineChartViewDelegate()
    lineChartCanvasView.drawChart()
    return lineChartCanvasView
  }
  
  func updateData(data: [LineChartDataModel]) {
    self.data = data
    drawChart()
  }
  
  private func setLineChartViewDelegate() {
    lineChartView.delegate = self
  }
}

extension LineChartCanvasView: ChartDrawer {
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

extension LineChartCanvasView: ChartViewDelegate {
  func chartValueSelected(_ chartView: ChartViewBase, entry: ChartDataEntry, highlight: Highlight) {
    selectedValueLabel.isHidden = false
    selectedValueLabel.text = "X: \(entry.x), Y: \(entry.y)"
  }
  
  func chartValueNothingSelected(_ chartView: ChartViewBase) {
    selectedValueLabel.isHidden = true
  }
}
