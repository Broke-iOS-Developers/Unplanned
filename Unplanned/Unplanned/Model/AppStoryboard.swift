//
//  AppStoryboard.swift
//  Unplanned
//
//  Created by Shoaib Huq on 4/14/22.
//

import Foundation
import UIKit

enum AppStoryboard : String {
    case StartingScreen = "StartingScreen"
    var instance : UIStoryboard {
      return UIStoryboard(name: self.rawValue, bundle: Bundle.main)
    }
}
