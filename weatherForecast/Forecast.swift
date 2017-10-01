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
    
    
    init(weatherDict: Dictionary<String, AnyObject>){
        if let temp = weatherDict["temp"] as? Dictionary<String, AnyObject>{
            
            if let min = temp ["main"] as? Double {
                let celsiusTemp = min - 273.15
                self._lowTemp = String(format: "%.0f", celsiusTemp)
            }
            
            if let max = temp["max"] as? Double {
                let celsiusTemp = max - 273.15
                self._highTemp = String(format: "%.0f", celsiusTemp)
            }
            
            if let weather = weatherDict["weather"] as? [Dictionary<String,AnyObject>]{
                if let main = weather[0]["main"] as? String {
                    self._weathertype = main
                }
            }
            
            if let date = weatherDict["dt"] as? Double {
                let unixConvertedDate =  Date(timeIntervalSince1970: date)
                let dateFormatter = DateFormatter()
                dateFormatter.dateStyle = .full
                dateFormatter.dateFormat = "EEEE"
                dateFormatter.timeStyle = .none
                self._date = unixConvertedDate.dayOfTheWeek()
            }
        }
        
    }
    
}

extension Date {
    func dayOfTheWeek() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: self)
    }
    
}











