//
//  ContentView.swift
//  Cinema
//
//  Created by mohamdan on 10/06/2023.
//

import SwiftUI

struct MainView: View {
    //: Property
    
    //:Body
    var body: some View {
        TabView{
            BrowserView()
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Brows")
                }
            TrailerView()
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("Trailer")
                }
            MapView()
                .tabItem {
                    Image(systemName: "map")
                    Text("Map")
                }
            GallaryView()
                .tabItem {
                    Image(systemName: "photo")
                    Text("Gallary")
                }
        }//: TabView
        .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
