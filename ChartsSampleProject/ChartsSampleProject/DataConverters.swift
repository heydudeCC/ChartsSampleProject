//
//  DataConverters.swift
//  ChartsSampleProject
//
//  Created by Sinta Amanda Tangkudung on 11/2/16.
//  Copyright © 2016 Sinta Amanda Tangkudung. All rights reserved.
//

import UIKit
import Charts

class DataConverter {
  
  class func createLineChartData(lineChartData: [LineChartDataModel]) -> LineChartData {
    
    let lineChartDataEntries = lineChartData.enumerated().map { (index, element) -> [ChartDataEntry] in
      let coordinatePairs = element.coordinatePairs
      var dataEntries = [ChartDataEntry]()
      for index in 0..<coordinatePairs.count {
        let coordinatePairEntry = ChartDataEntry(x: coordinatePairs[index].xAxis, y: coordinatePairs[index].yAxis)
        dataEntries.append(coordinatePairEntry)
      }
      return dataEntries
    }
    
    let lineChartColors = lineChartData.enumerated().map {
      return $0.element.color
    }
    
    let dataSets = lineChartDataEntries.enumerated().map { (index, element) -> LineChartDataSet in
      let dataSet = LineChartDataSet(values: element, label: "")
      dataSet.colors = [lineChartColors[index]]
      return dataSet
    }
    
    return LineChartData(dataSets: dataSets)
  }
  
  class func createPieChartData(pieChartData: [PieChartDataModel]) -> PieChartData {
    let pieChartDataEntries = pieChartData.enumerated().map { (index, element) -> PieChartDataEntry in
      let dataPair = element.dataPair
      let dataEntry = PieChartDataEntry(value: dataPair.value, label: dataPair.name)
      return dataEntry
    }
    
    let pieChartColors = pieChartData.enumerated().map {
      return $0.element.color
    }
    
    let dataSet = PieChartDataSet(values: pieChartDataEntries, label: "")
    dataSet.colors = pieChartColors
    
    return PieChartData(dataSet: dataSet)
  }
  
  class func createBarChartData(barChartData: [BarChartDataModel]) -> BarChartData {
    let barChartDataEntries = barChartData.enumerated().map { (index, element) -> BarChartDataEntry in
      return BarChartDataEntry(x: Double(index), y: element.value)
    }
    
    let barChartColors = barChartData.enumerated().map {
      return $0.element.color
    }
    
    let dataSet = BarChartDataSet(values: barChartDataEntries, label: "")
    dataSet.colors = barChartColors
    
    return BarChartData(dataSet: dataSet)
  }
}
