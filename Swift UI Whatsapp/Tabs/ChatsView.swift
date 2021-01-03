//
//  ChatsView.swift
//  Swift UI Whatsapp
//
//  Created by Joan Cabezas on 1/01/21.
//

import SwiftUI

struct ChatsView: View {
    @State private var searchText : String = ""
    
    var body: some View {
        NavigationView {
            List {
                VStack {
                    SearchBar(text: $searchText, placeholder: "Search")
                    HStack {
                        Button("Difusion List"){
                            
                        }.font(.caption)
                        .foregroundColor(.blue)
                        .padding(.leading, 16)
                        
                        Spacer()
                        
                        Button("Create a group"){
                            
                        }.font(.caption)
                        .foregroundColor(.blue)
                        .padding(.trailing, 16)
                    }
                }
                ForEach(0..<10, id: \.self){ item in
                    HStack {
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
                    .padding(.leading, 16)
                    .padding(.vertical, 4)
                }
            }.listStyle(PlainListStyle())
            .padding(-14)
            .navigationBarTitle("Chats")
            .navigationBarItems(
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
