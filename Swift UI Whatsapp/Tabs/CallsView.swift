//
//  CallsView.swift
//  Swift UI Whatsapp
//
//  Created by Joan Cabezas on 1/01/21.
//

import SwiftUI

struct CallsView: View {
    @State private var showAllCalls = true
    
    var body: some View {
        NavigationView {
            VStack {
                List(0..<10) { item in
                    
                    HStack {
                        HStack {
                            Image("photo")
                                .resizable()
                                .frame(width: 32, height:32)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading, spacing: 0) {
                                Text("+57 350 4342262")
                                    .font(.subheadline)
                                    .foregroundColor(.red)
                                HStack(spacing:4) {
                                    Image(systemName: "iphone")
                                        .resizable()
                                        .frame(width: 4, height: 8)
                                    Text("Missed")
                                        .font(.caption2)
                                        .foregroundColor(.gray)
                                }
                            }
                        }
                        Spacer()
                        HStack {
                            Text("17/12/20")
                                .font(.caption)
                                .foregroundColor(.gray)
                            Image(systemName: "info")
                                .foregroundColor(.blue)
                        }.padding(.trailing, 8)
                    }.frame(height:20)
                    
                }
                .listStyle(SidebarListStyle())
                .padding(-14)
                
            }
            .navigationBarTitle("Calls")
            .navigationBarItems(
                leading: HStack {
                    Button("Edit") {}
                },
                trailing: Image(systemName: "iphone").foregroundColor(.blue)
            )
        }.tabItem {
            Image(systemName: "iphone")
            Text("Calls")
        }
        
    }
}

struct CallsView_Previews: PreviewProvider {
    static var previews: some View {
        CallsView()
    }
}

