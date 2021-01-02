//
//  SettingsView.swift
//  Swift UI Whatsapp
//
//  Created by Joan Cabezas on 1/01/21.
//

import SwiftUI

class SettingsItemData {
    var image : String = ""
    var title : String = ""
    init(image: String, title: String) {
        self.image = image
        self.title = title
    }
}

struct SettingsItem: View {
    var item :SettingsItemData
    
    var body: some View {
        ZStack{
            HStack {
                Image(item.image)
                    .resizable()
                    .frame(width: 24, height: 24)
                    .cornerRadius(4)
                Text(item.title)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Spacer()
                Image(systemName: "chevron-right")
            }.padding(.horizontal, 12)
        }
        .frame(height:20)
    }
}

struct SettingsView: View {
    let defaultSettingsItem = SettingsItemData( image: "astronaut", title: "Featured messsages")
    
    let firstSectionItems = [SettingsItemData(image: "star", title: "Featured Messages"),
                             SettingsItemData(image: "web", title: "Web/Desktop WhatsApp")]
    
    let secondSectionItems = [SettingsItemData(image: "account", title: "Account"),
                              SettingsItemData(image: "chats", title: "Chats"),
                              SettingsItemData(image: "notifications", title: "Notifications"),
                              SettingsItemData(image: "storage", title: "Storage and Data")]
    
    let thirdSectionItems = [SettingsItemData(image: "help", title: "Help"),
                              SettingsItemData(image: "invite", title: "Invite friends")]
    

    var body: some View {
        NavigationView {
            ScrollView {
                // TODO profile section
                VStack{}.padding(.top, 16)
                Section{
                    SettingsItem(item: firstSectionItems[0])
                    Divider().padding(.leading, 48).padding(0)
                    SettingsItem(item: firstSectionItems[1])
                }
                VStack{}.padding(.top, 24)
                Section {
                    SettingsItem(item: secondSectionItems[0])
                    Divider().padding(.leading, 48)
                    SettingsItem(item: secondSectionItems[1])
                    Divider().padding(.leading, 48)
                    SettingsItem(item: secondSectionItems[2])
                    Divider().padding(.leading, 48)
                    SettingsItem(item: secondSectionItems[3])
                }
                VStack{}.padding(.top, 24)
                Section {
                    SettingsItem(item: thirdSectionItems[0])
                    Divider().padding(.leading, 48)
                    SettingsItem(item: thirdSectionItems[1])
                }
                VStack{}.padding(.top, 24)
                HStack(alignment:.center ){
                    Spacer()
                    VStack{
                        Text("from")
                            .font(.caption2)
                        Text("FACEBOOK")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    Spacer()
                }
                Spacer()
            }.navigationBarTitle("Settings")
        }
        .tabItem {
            Image(systemName: "touchid")
            Text("Settings")
        }
    }
}


struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
