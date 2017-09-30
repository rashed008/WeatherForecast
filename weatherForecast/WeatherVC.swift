//
//  ViewController.swift
//  weatherForecast
//
//  Created by RASHED on 9/19/17.
//  Copyright © 2017 RASHED. All rights reserved.
//

import UIKit
import Alamofire

class WeatherVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var templabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var currentWeatherLabel: UIImageView!
    @IBOutlet var currentWeatherTypeLabel: UILabel!
    @IBOutlet var tableView: UITableView!
    
    
    var currentweather: CurrentWeather!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        currentweather = CurrentWeather()
        currentweather.downloadWeatherdetails{
            //setup UI to load download data
            
            self.updateMainUI()
            
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "weatherCell", for: indexPath)
        return cell
    }
    
    
    func updateMainUI() {
     dateLabel.text = currentweather.date
      templabel.text = "\(currentweather.currenttemp)"
        currentWeatherTypeLabel.text = currentweather.weatherType
        locationLabel.text = currentweather.cityName
        currentWeatherLabel.image = UIImage (named: currentweather.weatherType)
    }
    
}

