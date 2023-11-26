//
//  ContentView.swift
//  NavigationPlay Watch App
//
//  Created by Gary Hamann on 11/26/23.
//

import SwiftUI
enum Tab:String{
    case Home,Selections,Groups,GroupPins
}
struct ContentView: View {
    @State private var selectedTab = Tab.Home
    var body: some View {
        TabView(selection: $selectedTab){
            home
                .tag(Tab.Home)
            
            SelectionsView(selectedTab: $selectedTab)
                .tag(Tab.Selections)
            
            GroupsView(selectedTab: $selectedTab)
                .tag(Tab.Groups)
            
            GroupPinsView(selectedTab: $selectedTab)
                .tag(Tab.GroupPins)
        }
        .tabViewStyle(.page(indexDisplayMode: .never))

        .padding()
    }
}

extension ContentView{
    
    var home: some View{
        VStack{
            Text("Do home stuff here")
            HStack{
                Spacer()
                Button{
                    selectedTab = .Selections
                }label: {
                    Image(systemName: "list.bullet")
                        .padding(2)
                        .padding(.horizontal,5)
                        .background(.blue)
                        .cornerRadius(10)
                }
                Spacer()

                Button{
                    selectedTab = .Groups
                }label: {
                    Image(systemName: "list.clipboard")
                        .padding(2)
                        .padding(.horizontal,5)
                        .background(.blue)
                        .cornerRadius(10)
                }
                Spacer()
                
                Button{
                    selectedTab = .GroupPins
                }label: {
                    Image(systemName: "list.bullet.rectangle")
                        .padding(2)
                        .padding(.horizontal,5)
                        .background(.blue)
                        .cornerRadius(10)
                }
                Spacer()
            }
            .buttonStyle(PlainButtonStyle())
            .padding(.horizontal,10)
        }
        
    }
}
#Preview {
    ContentView()
}
