//
//  weatherCell.swift
//  weatherForecast
//
//  Created by RASHED on 10/1/17.
//  Copyright © 2017 RASHED. All rights reserved.
//

import UIKit

class weatherCell: UITableViewCell {

    @IBOutlet var weatherIcon: UIImageView!
    @IBOutlet var dayLabel: UILabel!
    @IBOutlet var weatherType: UILabel!
    @IBOutlet var highTemp: UILabel!
    @IBOutlet var lowTemp: UILabel!
    
    func configureCell(forecast: Forecast) {
     highTemp.text = "\(forecast.lowTemp)"
        highTemp.text = "\(forecast.highTemp)"
        weatherType.text = forecast.weatherType
        weatherIcon.image = UIImage(named: forecast.weatherType)
        dayLabel.text = forecast.date
    
    }

   

}
