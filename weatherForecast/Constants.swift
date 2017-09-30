//
//  Constants.swift
//  weatherForecast
//
//  Created by RASHED on 9/29/17.
//  Copyright © 2017 RASHED. All rights reserved.
//

import Foundation

let BASE_URL = "http://samples.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "139b1b15e88fa797225412429c1c50c122a1"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)\(LONGITUDE)\(APP_ID)\(API_KEY)"








