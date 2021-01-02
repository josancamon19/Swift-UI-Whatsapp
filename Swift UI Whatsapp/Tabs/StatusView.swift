//
//  StatusView.swift
//  Swift UI Whatsapp
//
//  Created by Joan Cabezas on 1/01/21.
//

import SwiftUI

struct PersonView: View {
    var body: some View {
        HStack(alignment:.top){
            Image("astronaut")
                .resizable()
                .frame( width:40, height:40)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray, lineWidth: 2))
            VStack(alignment:.leading) {
                Text("Joan Cabezas")
                    .font(.subheadline)
                    .foregroundColor(.black)
                Text("6 hours ago")
                    .font(.caption2)
                    .foregroundColor(.gray)
            }
        }
        
    }
}

struct StatusView: View {
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                PersonView().padding(16)
                
                List(0..<10) { item in
                    PersonView()
                }
                .listStyle(SidebarListStyle())
                .padding(-14)
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

