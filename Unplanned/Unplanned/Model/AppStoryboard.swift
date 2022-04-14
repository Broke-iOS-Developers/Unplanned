//
//  AppStoryboard.swift
//  Unplanned
//
//  Created by Shoaib Huq on 4/14/22.
//

import Foundation
import UIKit

//Set up for more efficient and clean insantiating and referencing of Storyboards

enum AppStoryboard : String {
    case StartingScreen = "StartingScreen"
    case Home = "Home"
    var instance : UIStoryboard {
      return UIStoryboard(name: self.rawValue, bundle: Bundle.main)
    }
}
