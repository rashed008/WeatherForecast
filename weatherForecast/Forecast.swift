//
//  Forecast.swift
//  weatherForecast
//
//  Created by RASHED on 10/1/17.
//  Copyright © 2017 RASHED. All rights reserved.
//

import UIKit
import Alamofire

class Forecast {

    var _date: String!
    var _weathertype: String!
    var _highTemp: String!
    var _lowTemp: String!
    
    var date: String {
        if _date == nil {
          _date = ""
        }
    return _date
    }

    var weatherType: String {
        if _weathertype == nil {
         _weathertype = ""
        }
        return _weathertype
    }
    
    var highTemp: String {
        if _highTemp == nil {
         _highTemp = ""
        }
        return _highTemp
    }
    
    var lowTemp: String {
        if _lowTemp == nil {
         _lowTemp = ""
        }
        return _lowTemp
    }
    

}
