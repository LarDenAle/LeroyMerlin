//
//  ContentView.swift
//  LeroyMerlin
//
//  Created by Denis Larin on 17.04.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            MainScreenView()
            LoadingScreenView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
