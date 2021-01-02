//
//  ContentView.swift
//  Swift UI Whatsapp
//
//  Created by Joan Cabezas on 1/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            StatusView()
            CallsView()
            CameraView()
            ChatsView()
            SettingsView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
