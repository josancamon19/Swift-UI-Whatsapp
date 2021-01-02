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
            if (isSelf){
                Spacer()
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
        
    }
}

struct StatusView: View {
    
    var body: some View {
        NavigationView {
            List(0..<10) { item in
                if (item == 0){
                    PersonView(isSelf: true).padding(.bottom, 32)
                }else {
                    PersonView()
                }
                
            }
            .listStyle(SidebarListStyle())
            .padding(-14)
            .navigationBarTitle("Status")
            .navigationBarItems(leading:Button("Privacy") {})
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

