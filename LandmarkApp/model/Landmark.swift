//
//  LandmarkModel.swift
//  LandmarkApp
//
//  Created by cenk atahan özbek on 25.12.2024.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Identifiable {
    let id = UUID()
    var name: String
    var description: String
    var image: Image
    var location: Location
    
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: location.lat, longitude: location.lng)
    }
}

struct Location {
    var lat: Double
    var lng: Double
}

let mockLandmarks: [Landmark] = [
    Landmark(name: "Eiffel Tower", description: "A wrought-iron lattice tower in Paris, France.", image: Image("eiffel_tower"), location: Location(lat: 48.858944, lng: 2.294478)), // Paris coordinates
    Landmark(name: "Great Wall of China", description: "A historic wall stretching across northern China.", image: Image("great_wall_of_china"), location: Location(lat: 0,lng: 0)), // No location provided
    Landmark(name: "Pyramids of Giza", description: "Ancient pyramids located in Egypt.", image: Image("pyramids_of_giza"), location: Location(lat: 29.977363, lng: 31.137744)), // Giza coordinates
    Landmark(name: "Statue of Liberty", description: "A colossal neoclassical sculpture in New York City.", image: Image("statue_of_liberty"), location: Location(lat: 40.689241, lng: -74.044583)), // New York City coordinates
    Landmark(name: "Sydney Opera House", description: "A multi-venue performing arts center in Sydney, Australia.", image: Image("sydney_opera_house"), location: Location(lat: -33.856777, lng: 151.213108)), // Sydney coordinates
    Landmark(name: "Taj Mahal", description: "A white marble mausoleum in Agra, India.", image: Image("taj_mahal"), location: Location(lat: 27.194635, lng: 78.042124)), // Agra coordinates
    Landmark(name: "Mount Fuji", description: "An iconic volcano and cultural symbol of Japan.", image: Image("mount_fuji"), location: Location(lat: 35.363400, lng: 138.737300)), // Mount Fuji coordinates
    Landmark(name: "Machu Picchu", description: "An ancient Incan citadel in the Andes Mountains.", image: Image("machu_picchu"), location: Location(lat: -13.000327, lng: -72.547125)), // Machu Picchu coordinates
    Landmark(name: "Christ the Redeemer", description: "A large statue of Jesus Christ in Rio de Janeiro, Brazil.", image: Image("christ_the_redeemer"), location: Location(lat: -22.951703, lng: -43.210497)), // Rio de Janeiro coordinates
    Landmark(name: "Colosseum", description: "An ancient amphitheater in Rome, Italy.", image: Image("colosseum"), location: Location(lat: 41.890210, lng: 12.492372)) // Rome coordinates
]
