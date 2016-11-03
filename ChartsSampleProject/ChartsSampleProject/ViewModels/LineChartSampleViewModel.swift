//
//  LineChartSampleViewModel.swift
//  ChartsSampleProject
//
//  Created by Sinta Amanda Tangkudung on 11/3/16.
//  Copyright © 2016 Sinta Amanda Tangkudung. All rights reserved.
//

import UIKit

class LineChartSampleViewModel: NSObject {
  var data: [LineChartDataModel]!
  
  override init() {
    super.init()
    createSampleData()
  }
  
  init(data: [LineChartDataModel]) {
    super.init()
    
    self.data = data
  }
  
  private func createSampleData() {
    let coordinatePairs1 = [
      LineChartCoordinatePair(xAxis: 1, yAxis: 11),
      LineChartCoordinatePair(xAxis: 2, yAxis: 14),
      LineChartCoordinatePair(xAxis: 3, yAxis: 16),
      LineChartCoordinatePair(xAxis: 4, yAxis: 17),
      LineChartCoordinatePair(xAxis: 5, yAxis: 18)
    ]
    
    let coordinatePairs2 = [
      LineChartCoordinatePair(xAxis: 2, yAxis: 200),
      LineChartCoordinatePair(xAxis: 3, yAxis: 21),
      LineChartCoordinatePair(xAxis: 4, yAxis: 22),
      LineChartCoordinatePair(xAxis: 5, yAxis: 203),
      LineChartCoordinatePair(xAxis: 6, yAxis: 24),
      LineChartCoordinatePair(xAxis: 7, yAxis: 25),
      LineChartCoordinatePair(xAxis: 8, yAxis: 236),
      LineChartCoordinatePair(xAxis: 9, yAxis: 27),
      LineChartCoordinatePair(xAxis: 10, yAxis: 29)
    ]
    
    data = [
//      LineChartDataModel(coordinatePairs: coordinatePairs1, color: UIColor.orange),
      LineChartDataModel(coordinatePairs: coordinatePairs2, color: UIColor.brown)
    ]
  }
}
