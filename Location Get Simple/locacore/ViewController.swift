
import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    let locationmanager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //for use when  the app is open & in the background
        // locationmanager.requestAlwaysAuthorization()
        
        //for use when the app is open
        locationmanager.requestWhenInUseAuthorization()
        
        if CLLocationManager.locationServicesEnabled() {
            locationmanager.delegate = self
            locationmanager.desiredAccuracy = kCLLocationAccuracyBest
            locationmanager.startUpdatingLocation()
          //  locationmanager.stopUpdatingLocation()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        if let location = locations.first {
//            print(location.coordinate.latitude)
//        }
        print("latitude",locations.last?.coordinate.latitude)
        print("longitude",locations.last?.coordinate.longitude)

    }
}

