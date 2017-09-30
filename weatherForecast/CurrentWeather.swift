//
//  CurrentWeather.swift
//  weatherForecast
//
//  Created by RASHED on 9/29/17.
//  Copyright © 2017 RASHED. All rights reserved.
//

import UIKit
import Alamofire

class  CurrentWeather {
    var _cityName: String!
    var _date: String!
    var _weatherType: String!
    var _currenttemp: Double!
    
    var cityName: String {
        if _cityName == nil {
            _cityName = ""
        }
        return _cityName
    }
    
    var weatherType: String {
        if _weatherType == nil {
            _weatherType = ""
        }
        return _weatherType
    }
    
    var currenttemp: Double {
        if _currenttemp == nil {
            _currenttemp = 0.0
        }
        return _currenttemp
    }
    
    var date: String {
        if _date == nil {
            _date = ""
        }
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .none
        let currentDate = dateFormatter.string(from: Date())
        self._date = "Today\(currentDate)"
        return _date
    }
}
