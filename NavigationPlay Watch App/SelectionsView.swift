//
//  SelectionsView.swift
//  NavigationPlay Watch App
//
//  Created by Gary Hamann on 11/26/23.
//

import SwiftUI

struct SelectionsView: View {
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
            .buttonStyle(PlainButtonStyle())
        }
    }
}

#Preview {
    SelectionsView(selectedTab: .constant(Tab.Selections))
}
