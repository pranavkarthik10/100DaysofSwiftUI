//
//  ContentView.swift
//  WatchCarousel WatchKit Extension
//
//  Created by Pranav Karthik on 2019-07-10.
//  Copyright © 2019 Zandex Tech. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Instagram")
            .bold()
            List(people.identified(by: \.imageName)){ profile in
            NavigationLink(destination: ProfileView(profileName: profile.name, followers: profile.followers)){
            Image(profile.imageName)
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            }
        .listStyle(.carousel)}
    }
    }
}

struct ProfileView: View {
    
    var profileName: String
    var followers: String
    
    var body: some View {
        VStack{
        Text(profileName)
        .bold()
        .font(.largeTitle)
        Text(followers + " followers")
        Button(action: {print(" ")}){ Text("Follow")
            }
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
