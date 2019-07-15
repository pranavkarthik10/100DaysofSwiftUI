//
//  ContentView.swift
//  Instagram
//
//  Created by Pranav Karthik on 2019-07-08.
//  Copyright © 2019 Zandex Tech. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "camera")
                Spacer()
                Image("instagram")
                .resizable()
                .scaledToFit()
                .frame(width: 135, height: 50)
                .padding(.leading, 42)
                Spacer()
                Image("igtv")
                .resizable()
                .scaledToFit()
                    .frame(width:27, height: 27)
                Image(systemName: "paperplane")
            }.padding(.top, -60).padding(.leading, 10).padding(.bottom,0).padding(.trailing, 10).imageScale(.large)
            
            Divider()
            .padding(.top, -20)
            ScrollView(.horizontal) {
            HStack {
                VStack{
                Image("pranav_prof")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                    .frame(width: 60, height: 70)
                
                Text("Your Story")
                    .font(Font.system(size: 11))
                }.padding().padding(.trailing, -23)
                VStack{
                    Image("ig")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 60, height: 70)
                        .overlay(Circle().stroke(Color.pink, lineWidth: 2))
                    Text("New!")
                        .font(Font.system(size: 11))
                }.padding().padding(.trailing, -23)
                VStack{
                    Image("nasa")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 60, height: 70)
                        .overlay(Circle().stroke(Color.pink, lineWidth: 2))
                    Text("nasa")
                        .font(Font.system(size: 11))
                }.padding().padding(.trailing, -23)
                VStack{
                    Image("kylie")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 60, height: 70)
                        .overlay(Circle().stroke(Color.pink, lineWidth: 2))
                    Text("kylie...")
                        .font(Font.system(size: 11))
                }.padding().padding(.trailing, -23)
                VStack{
                    Image("kim")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 60, height: 70)
                        .overlay(Circle().stroke(Color.pink, lineWidth: 2))
                    Text("kimk...")
                        .font(Font.system(size: 11))
                }.padding().padding(.trailing, -23)
                VStack{
                    Image("pranav_prof")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 60, height: 70)
                        .overlay(Circle().stroke(Color.pink, lineWidth: 2))
                    Text("Your Story")
                        .font(Font.system(size: 11))
                }.padding()
            }
            }.padding(.top, -16)
        VStack(alignment: .leading){
        HStack {
            Image("egg_prof")
            .resizable()
            .scaledToFit()
                .frame(width: 40, height: 40)
            .clipShape(Circle())
            Text("world_record_egg")
                .bold()
            Spacer()
            Image(systemName: "ellipsis")
            }.padding()
            
            Image("_post")
            .resizable()
            .scaledToFit()
            
            HStack {
                Image(systemName: "heart")
                Image(systemName: "bubble.right")
                Image(systemName: "paperplane")
                Spacer()
                Image(systemName: "bookmark")
            }.padding()
            Text("53,636,794 likes")
            .bold()
                .padding(.leading, 15)
            HStack {
                Text("world_record_egg")
                .bold()
                
                Text("Let's set a world record tog...")
            }.padding(.leading, 15)
        }.padding(.top, -25)
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
