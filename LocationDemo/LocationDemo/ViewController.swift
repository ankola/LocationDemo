//
//  ViewController.swift
//  LocationDemo
//
//  Created by agilemac-24 on 5/18/18.
//  Copyright © 2018 agilemac-24. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController,CLLocationManagerDelegate {

    var locationManager:CLLocationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
    }

    @IBAction func checkLocation(){
        locationManager.delegate = self
        if CLLocationManager.authorizationStatus() == .denied  {
           print("block contetn")
        }
        else if CLLocationManager.authorizationStatus() == .restricted || CLLocationManager.authorizationStatus() == .notDetermined {
            //locationManager.requestWhenInUseAuthorization()
            locationManager.requestAlwaysAuthorization()
        }
        else {
            
            locationManager.desiredAccuracy = kCLLocationAccuracyBest;
            locationManager.distanceFilter=500;
            locationManager.startUpdatingLocation()
            locationManager.stopUpdatingLocation()
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: - Delegate
    public func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation])
    {
        print(locations.first?.coordinate)
    }
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        
        if status == .denied || status == .restricted || status == .notDetermined {
            locationManager.requestWhenInUseAuthorization()
            locationManager.requestAlwaysAuthorization()
        }else {
            
            locationManager.desiredAccuracy = kCLLocationAccuracyBest;
            locationManager.distanceFilter=500;
            locationManager.startUpdatingLocation()
        }
        
    }
}

