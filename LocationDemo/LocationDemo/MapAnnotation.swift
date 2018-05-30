//
//  MapAnnotation.swift
//  WebViewDemo
//
//  Created by agilemac-24 on 12/13/17.
//

import UIKit
import MapKit

class MapAnnotation: NSObject,MKAnnotation
{
   
    let title: String?
    let locationName: String
    let discipline: String
    let coordinate: CLLocationCoordinate2D
    
    init(title: String, locationName: String, discipline: String, coordinate: CLLocationCoordinate2D)
    {
        self.title = title
        self.locationName = locationName
        self.discipline = discipline
        self.coordinate = coordinate
        
        super.init()
    }
    
}
