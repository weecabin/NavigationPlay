//
//  GroupsView.swift
//  NavigationPlay Watch App
//
//  Created by Gary Hamann on 11/26/23.
//

import SwiftUI

struct GroupsView: View {
    @Binding var selectedTab:Tab
    var body: some View {
        VStack{
            Text(selectedTab.rawValue)
                .padding()
            Button{
                selectedTab = Tab.Home
            }label: {
                Text("Home")
                    .padding(2)
                    .padding(.horizontal,5)
                    .background(.blue)
                    .cornerRadius(10)
            }
            .padding(.bottom,10)
            Button{
                selectedTab = Tab.GroupPins
            }label: {
                Text("Group Pins")
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
    GroupsView(selectedTab: .constant(Tab.Groups))
}
