//
//  ContentView.swift
//  Search
//
//  Created by Pranav Karthik on 2019-07-14.
//  Copyright © 2019 Zandex Tech. All rights reserved.
//

import SwiftUI

struct macOS {
    var name: String
    var releaseDate: String
}

struct ContentView : View {
    
    let macOS_Versions = [macOS(name: "Snow Leapord", releaseDate: "2010"), macOS(name: "Lion", releaseDate: "2011"), macOS(name: "Mountain Lion", releaseDate: "2012"), macOS(name: "Mavericks", releaseDate: "2013"), macOS(name: "Yosemite", releaseDate: "2014"), macOS(name: "El Capitan", releaseDate: "2015"), macOS(name: "Sierra", releaseDate: "2016"), macOS(name: "High Sierra", releaseDate: "2017"), macOS(name: "Mojave", releaseDate: "2018"), macOS(name: "Catalina", releaseDate: "2019")]
    
   let array = ["Snow Leapord", "Lion", "Mountain Lion", "Mavericks", "Yosemite", "El Capitan", "Sierra", "High Sierra", "Mojave", "Catalina"]
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            VStack {
                HStack{
                    Image(systemName: "magnifyingglass")
                    TextField($searchText).textFieldStyle(.roundedBorder)
                }.padding()
            List {
                
                
                ForEach(macOS_Versions.filter{$0.name.hasPrefix(searchText) || searchText == "" }.identified(by: \.name)) {
                    macOSRow(name: $0.name, releaseDate: $0.releaseDate)
                }
            }
            }
        .navigationBarTitle(Text("macOS Versions"))}
    }
}

struct macOSRow: View {
    
    var name = ""
    var releaseDate = ""
    var body: some View {
        VStack(alignment: .leading){
            Text(name)
            Text(releaseDate)
            .bold()
            .font(.caption)
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
