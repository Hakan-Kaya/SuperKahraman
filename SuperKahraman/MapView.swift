//
//  MapView.swift
//  SuperKahraman
//
//  Created by Hakan Kaya on 24.04.2022.
//

import SwiftUI
import MapKit

// Yeni harita kit bu aslında
//struct MapView: View {
//
//    @State var region = MKCoordinateRegion(center: SuperKahramanDizisi[0].koordinatLokasyonu, span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
//    var body: some View {
//        Map(coordinateRegion: $region)
//    }
//}
struct MapView: UIViewRepresentable {

    var coordinate: CLLocationCoordinate2D

    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }

    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.3, longitudeDelta: 0.3)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: SuperKahramanDizisi[0].koordinatLokasyonu)
    }
}
