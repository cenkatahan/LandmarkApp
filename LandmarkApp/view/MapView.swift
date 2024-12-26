//
//  MapView.swift
//  LandmarkApp
//
//  Created by cenk atahan özbek on 26.12.2024.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    let coordinate: CLLocationCoordinate2D
    
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
    
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        updateUIView(mapView, context: context)
        return mapView
    }
    
    
}

#Preview {
    MapView(coordinate: mockLandmarks[0].coordinate)
}
