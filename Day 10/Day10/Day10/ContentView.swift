//
//  ContentView.swift
//  Day10
//
//  Created by Pranav Karthik on 2019-07-16.
//  Copyright © 2019 Zandex Tech. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    @State var front = false
    
    var body: some View {
        ZStack {
            BackView()
                .frame(width: 390, height: 440)
                .background(Color.green)
                .padding()
                .rotation3DEffect(.degrees(front ? 180 : 0.0), axis: (x:0.0, y:1.0, z: 0.0))
                .zIndex(front ? 0 : 1)
            
            FrontView(name: "Pranav Karthik", role: "iOS Developer", img: "me")
                .background(Color.green)
                .padding()
                .cornerRadius(12)
                .rotation3DEffect(.degrees(front ? 0.0 : 180), axis: (x:0.0, y:-1.0, z: 0.0))
                .zIndex(front ? 1 : 0)
            
            
        }.gesture(TapGesture()
            .onEnded {_ in
                withAnimation(.fluidSpring()) {
                    self.front.toggle()
                }
            }
        )
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

struct FrontView: View {
    
    var name = ""
    var role = ""
    var img = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(img)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
            
            Text(name)
                .font(.title)
                .color(.white)
            
            Text(role)
                .font(.body)
                .color(.white)
        }.padding()
    }
}

struct BackView: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Skills")
            .font(.largeTitle)
            .bold()
            .color(Color.white)
            
            Text("Swift")
            .font(.title)
            Text("MVC")
            .font(.title)
            Text("ARKit")
            .font(.title)
            Text("CloudKit")
            .font(.title)
        }.padding()
    }
}
