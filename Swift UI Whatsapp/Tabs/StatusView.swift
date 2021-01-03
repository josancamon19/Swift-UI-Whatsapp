//
//  StatusView.swift
//  Swift UI Whatsapp
//
//  Created by Joan Cabezas on 1/01/21.
//

import SwiftUI

struct PersonView: View {
    var isSelf = false
    
    var body: some View {
        HStack(alignment:.center){
            ZStack {
                Image("astronaut")
                    .resizable()
                    .frame( width:40, height:40)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.gray, lineWidth: 2))
                    .padding(.leading, isSelf ? -12 : 0)
                
                if (isSelf){
                    Image(systemName: "message.fill")
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 14, height: 14)
                        .padding(.top, 30)
                        .padding(.leading, 28)
                        .foregroundColor(.blue)
                }
            }
            VStack(alignment:.leading) {
                Text(isSelf ? "My Status" : "Joan Cabezas")
                    .font(.subheadline)
                    .foregroundColor(.black)
                Text(isSelf ? "Add to my status" : "6 hours ago")
                    .font(.caption2)
                    .foregroundColor(.gray)
            }
            Spacer()
            if (isSelf){
                HStack(alignment:.center) {
                    Image(systemName: "camera")
                        .foregroundColor(.blue)
                        .padding(.trailing, 4)
                    Image(systemName: "swift")
                        .foregroundColor(.blue)
                        .padding(.trailing,8)
                }
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 4)
        
    }
}

struct StatusView: View {
    @State private var searchText : String = ""

    var body: some View {
        NavigationView {
            VStack {
                List {
                    VStack {
                        SearchBar(text: $searchText, placeholder: "Search")
                        PersonView(isSelf: true).background(sectionColor).padding(.horizontal, 4)
                    }.background(sectionColor).padding(-16)

                    Section(header: HStack {
                        Text("Watched").foregroundColor(.gray).font(.caption)
                        Spacer()
                    }) {
                        ForEach(0..<12) { item in
                            PersonView().background(sectionColor)
                                .padding(.horizontal, -16)
                                .padding(.vertical, -4)
                        }
                        .listRowBackground(sectionColor)
                        .background(sectionColor)
                        .listStyle(PlainListStyle())
                    }
                }
            }
            .padding(.horizontal, -16)
            .navigationBarTitle("Status")
            .navigationBarItems(leading:Button("Privacy") {})
        } .tabItem {
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

