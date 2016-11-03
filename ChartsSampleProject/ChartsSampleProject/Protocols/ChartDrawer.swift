//
//  ChartDrawer.swift
//  ChartsSampleProject
//
//  Created by Sinta Amanda Tangkudung on 11/2/16.
//  Copyright © 2016 Sinta Amanda Tangkudung. All rights reserved.
//

import Foundation

@objc protocol ChartDrawer {
  func drawChart()
  @objc optional func customizeView()
}
