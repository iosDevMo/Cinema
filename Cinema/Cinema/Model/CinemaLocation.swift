//
//  CinemaLocation.swift
//  Cinema
//
//  Created by mohamdan on 11/06/2023.
//

import Foundation
import MapKit
struct CinemaLocation : Codable, Identifiable {
    var id : String
    var name : String
    var image : String
    var latitude : Double
    var longitude : Double
    
    var location : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
