//
//  DetayView.swift
//  SuperKahraman
//
//  Created by Hakan Kaya on 28.04.2022.
//

import SwiftUI

struct DetayView: View {
    var secilenKahraman: Superkahraman
    var body: some View {
        VStack {
            MapView(coordinate: secilenKahraman.koordinatLokasyonu)
                .frame(height: UIScreen.main.bounds.height * 0.3)
                .edgesIgnoringSafeArea(.top)
            
            OzelGorselView(image: Image(secilenKahraman.gorselİsmi))
                .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.3, alignment: .center)
                .offset(y: UIScreen.main.bounds.height * -0.25)
            
            VStack {
                HStack {
                    Text(secilenKahraman.isim).bold().font(.largeTitle).foregroundColor(.blue)
                    Spacer()
                    Text(secilenKahraman.gercekİsim).bold().font(.title).foregroundColor(.red)
                }.padding()
                    .offset(y: UIScreen.main.bounds.height * -0.16)
                Text(secilenKahraman.meslek).bold().font(.title).foregroundColor(.green)
            }
            Spacer()
        }
    }
}

struct DetayView_Previews: PreviewProvider {
    static var previews: some View {
        DetayView(secilenKahraman: batman)
    }
}
