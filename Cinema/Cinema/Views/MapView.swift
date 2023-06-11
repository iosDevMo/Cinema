//
//  MapView.swift
//  Cinema
//
//  Created by mohamdan on 10/06/2023.
//

import SwiftUI
import MapKit

struct MapView: View {
    //:MARK: - Properties
    @State private var region : MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 24.4539, longitude: 54.3773), span: MKCoordinateSpan(latitudeDelta: 5.0, longitudeDelta: 5.0))
    var cinemaLocations : [CinemaLocation] = decode(file: "locations.json")
    //:MARK: - Body
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: cinemaLocations) { item in
            MapAnnotation(coordinate: item.location) {
                CinemaAnnotation(location: item)
            }
        }
        .ignoresSafeArea()
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
