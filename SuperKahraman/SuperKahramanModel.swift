//
//  SuperKahramanModel.swift
//  SuperKahraman
//
//  Created by Hakan Kaya on 23.04.2022.
//

import Foundation
import SwiftUI
import CoreLocation

struct Superkahraman: Identifiable {
    var id = UUID()
    var isim: String
    var gorselİsmi: String
    var gercekİsim: String
    var sehir: String
    var meslek: String
    var koordinat: Koordinat
    var koordinatLokasyonu: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: koordinat.latitude, longitude: koordinat.longitude)
    }
}

struct Koordinat {
    var latitude: Double
    var longitude: Double
}

let batman = Superkahraman(isim: "Batman", gorselİsmi: "batman", gercekİsim: "Bruce Wayne", sehir: "Gotham", meslek: "Businessman", koordinat: Koordinat(latitude: 41.8826214, longitude: -87.625598))

let superman = Superkahraman(isim: "Superman", gorselİsmi: "superman", gercekİsim: "Clark Kent", sehir: "New York", meslek: "Journalist", koordinat: Koordinat(latitude: 40.7581248, longitude: -73.9830172))

let SuperKahramanDizisi = [batman, superman]
