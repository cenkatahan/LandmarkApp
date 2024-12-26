//
//  LandmarkModel.swift
//  LandmarkApp
//
//  Created by cenk atahan özbek on 25.12.2024.
//

import Foundation
import SwiftUI

struct Landmark: Identifiable {
    let id = UUID()
    var name: String
    var description: String
    var image: Image
}


let mockLandmarks: [Landmark] = [
    Landmark(name: "Eiffel Tower", description: "A wrought-iron lattice tower in Paris, France.", image: Image("eiffel_tower")),
    Landmark(name: "Great Wall of China", description: "A historic wall stretching across northern China.", image: Image("great_wall_of_china")),
    Landmark(name: "Pyramids of Giza", description: "Ancient pyramids located in Egypt.", image: Image("pyramids_of_giza")),
    Landmark(name: "Statue of Liberty", description: "A colossal neoclassical sculpture in New York City.", image: Image("statue_of_liberty")),
    Landmark(name: "Sydney Opera House", description: "A multi-venue performing arts center in Sydney, Australia.", image: Image("sydney_opera_house")),
    Landmark(name: "Taj Mahal", description: "A white marble mausoleum in Agra, India.", image: Image("taj_mahal")),
    Landmark(name: "Mount Fuji", description: "An iconic volcano and cultural symbol of Japan.", image: Image("mount_fuji")),
    Landmark(name: "Machu Picchu", description: "An ancient Incan citadel in the Andes Mountains.", image: Image("machu_picchu")),
    Landmark(name: "Christ the Redeemer", description: "A large statue of Jesus Christ in Rio de Janeiro, Brazil.", image: Image("christ_the_redeemer")),
    Landmark(name: "Colosseum", description: "An ancient amphitheater in Rome, Italy.", image: Image("colosseum"))
]
