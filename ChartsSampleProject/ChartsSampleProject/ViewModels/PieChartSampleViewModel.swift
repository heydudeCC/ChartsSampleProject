//
//  PieChartSampleViewModel.swift
//  ChartsSampleProject
//
//  Created by Sinta Amanda Tangkudung on 11/3/16.
//  Copyright © 2016 Sinta Amanda Tangkudung. All rights reserved.
//

import UIKit

class PieChartSampleViewModel: NSObject {
  var data: [PieChartDataModel]!
  
  override init() {
    super.init()
    createSampleData()
  }
  
  init(data: [PieChartDataModel]) {
    super.init()
    
    self.data = data
  }
  
  private func createSampleData() {
    let pieChartDataPair1 = PieChartDataPair(name: "Hammy", value: 96000)
    let pieChartDataPair2 = PieChartDataPair(name: "Laurens", value: 32000)
    let pieChartDataPair3 = PieChartDataPair(name: "Lafayette", value: 16000)
    let pieChartDataPair4 = PieChartDataPair(name: "Mulligan", value: 8000)
    
    let pieChartData1 = PieChartDataModel(dataPair: pieChartDataPair1, color: UIColor.green)
    let pieChartData2 = PieChartDataModel(dataPair: pieChartDataPair2, color: UIColor.blue)
    let pieChartData3 = PieChartDataModel(dataPair: pieChartDataPair3, color: UIColor.red)
    let pieChartData4 = PieChartDataModel(dataPair: pieChartDataPair4, color: UIColor.yellow)
    
    data = [pieChartData1, pieChartData2, pieChartData3, pieChartData4]
  }
}
