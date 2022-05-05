//
//  ContentView.swift
//  SuperKahraman
//
//  Created by Hakan Kaya on 23.04.2022.
//

import SwiftUI

struct ListeView: View {
    var body: some View {
        NavigationView {
            List(SuperKahramanDizisi) {superkahraman in
                NavigationLink(destination: DetayView(secilenKahraman: superkahraman), label: { Text(superkahraman.isim)})
            }.navigationTitle(Text("Süper Kahramanlar"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ListeView()
    }
}
