//
//  BarChartSampleViewModel.swift
//  ChartsSampleProject
//
//  Created by Sinta Amanda Tangkudung on 11/3/16.
//  Copyright © 2016 Sinta Amanda Tangkudung. All rights reserved.
//

import UIKit

class BarChartSampleViewModel: NSObject {
  var data: [BarChartDataModel]!
  
  override init() {
    super.init()
    createSampleData()
  }
  
  init(data: [BarChartDataModel]) {
    super.init()
    
    self.data = data
  }
  
  private func createSampleData() {
    data = [
      BarChartDataModel(value: 96000, color: UIColor.red),
      BarChartDataModel(value: 32000, color: UIColor.brown),
      BarChartDataModel(value: 16000, color: UIColor.purple),
      BarChartDataModel(value: 8000, color: UIColor.green)
    ]
  }
}
