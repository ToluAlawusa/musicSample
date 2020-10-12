//
//  ContentView.swift
//  grooveAppSwift
//
//  Created by Tolulope Alawusa on 10/10/2020.
//  Copyright © 2020 Tolulope Alawusa. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        //  This sets the background image of the Tabview Tabbar
       UITabBar.appearance().backgroundImage = UIImage(named: "footer_bg")
   
    }
    
    // variable that handle state change as youre switching between nav tabs
    @State var selected = 0
    
    var body: some View {
        // the tabview text and image items, also the vie classes are loaded with it to show on selected
        TabView(selection: $selected) {
            myUduxView().tabItem({
                Image(systemName: Constants.TabBarImageName.tabBar0)
                    .font(.title)
                Text("\(Constants.TabBarText.tabBar0)")
            }).tag(0)
            
            homeView().tabItem({
                Image(systemName: Constants.TabBarImageName.tabBar1)
                    .font(.title)
                Text("\(Constants.TabBarText.tabBar1)")
            }).tag(1)
            
            discoverView().tabItem({
                Image(systemName: Constants.TabBarImageName.tabBar2)
                    .font(.title)
                Text("\(Constants.TabBarText.tabBar2)")
            }).tag(2)
            
            connectView().tabItem({
                Image(systemName: Constants.TabBarImageName.tabBar3)
                    .font(.title)
                Text("\(Constants.TabBarText.tabBar3)")
            }).tag(3)
            
            searchView().tabItem({
                Image(systemName: Constants.TabBarImageName.tabBar4)
                    .font(.title)
                Text("\(Constants.TabBarText.tabBar4)")
            }).tag(4)
            
        }.accentColor(Color.orange)
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


