//
//  StatusView.swift
//  Swift UI Whatsapp
//
//  Created by Joan Cabezas on 1/01/21.
//

import SwiftUI

struct StatusView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Status View")
            }
            .navigationBarTitle("Status")
        }
        .tabItem {
            Image(systemName: "livephoto")
            Text("Status")
        }
        
    }
}

struct StatusView_Previews: PreviewProvider {
    static var previews: some View {
        StatusView()
    }
}

