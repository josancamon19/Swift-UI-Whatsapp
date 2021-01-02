//
//  ChatsView.swift
//  Swift UI Whatsapp
//
//  Created by Joan Cabezas on 1/01/21.
//

import SwiftUI

struct ChatsView: View {
    var body: some View {
        NavigationView {
            List(0..<15) { item in
                
                Image("person")
                    .resizable()
                    .frame(width: 24.0, height: 24.0)
                    .padding(.trailing, 4)
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Joan Cabezas").font(.subheadline)
                        Spacer()
                        Text("3:51 p.m")
                            .font(.caption2)
                            .foregroundColor(Color.blue)
                            .padding(.trailing, 12)
                    }
                    
                    Text("Publishing Whatsapp clone to the App Store, go and check it out!")
                        .font(.caption)
                        .foregroundColor(Color.gray)
                        .padding(.trailing, 20)
                }
            }
            .listStyle(SidebarListStyle())
            .padding(-14)
            .navigationBarTitle("Chats")
            .navigationBarItems( // TODO add centered Toggle
                leading: Button("Edit"){},
                trailing: Image(systemName: "iphone")
                    .foregroundColor(.blue)
            )
        }.tabItem {
            Image(systemName: "message.fill")
            Text("Chats")
            
        }
        
    }
}

struct ChatsView_Previews: PreviewProvider {
    static var previews: some View {
        ChatsView()
    }
}
