//
//  GroupPinsView.swift
//  NavigationPlay Watch App
//
//  Created by Gary Hamann on 11/26/23.
//

import SwiftUI

struct GroupPinsView: View {
    @Binding var selectedTab:Tab
    var body: some View {
        VStack{
            Text(selectedTab.rawValue)
                .padding()
            Button{
                selectedTab = Tab.Groups
            }label: {
                    Text("Groups")
                    .padding(2)
                    .padding(.horizontal,5)
                    .background(.blue)
                    .cornerRadius(10)
            }
            .padding(.bottom,10)
            Button{
                selectedTab = Tab.Home
            }label: {
                    Text("Home")
                    .padding(2)
                    .padding(.horizontal,5)
                    .background(.blue)
                    .cornerRadius(10)
            }
        }
        .buttonStyle(PlainButtonStyle())
    }
}

#Preview {
    GroupPinsView(selectedTab: .constant(Tab.GroupPins))
}
