//
//  ContentView.swift
//  InstagramV2
//
//  Created by Pranav Karthik on 2019-07-09.
//  Copyright © 2019 Zandex Tech. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @State private var selection = 0
    var body: some View {
        TabbedView(selection: $selection){
            HomeView()
            SearchView()
            NewView()
            YouView()
            ProfileView()
        }.background(Color.white)
        .edgesIgnoringSafeArea(.top)
    }
    
}

struct HomeView: View {
    var body: some View {
        NavigationView {
            List{
                
                //Stories
                ScrollView(.horizontal){
                    HStack{
                        VStack{
                            Image("me")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60, height: 60)
                                .clipShape(Circle())
                            Text("You")
                                .font(Font.system(size: 13))
                                .fontWeight(.light)
                        }.padding(.trailing, 5)
                        VStack{
                            Image("0prof")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60, height: 60)
                                .clipShape(Circle())
                            Text("dyli...")
                                .font(Font.system(size: 13))
                                .fontWeight(.light)
                        }.padding([.leading, .trailing], 5)
                        VStack{
                            Image("1prof")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60, height: 60)
                                .clipShape(Circle())
                            Text("alexa")
                                .font(Font.system(size: 13))
                                .fontWeight(.light)
                        }.padding([.leading, .trailing], 5)
                        VStack{
                            Image("2prof")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60, height: 60)
                                .clipShape(Circle())
                            Text("john")
                                .font(Font.system(size: 13))
                                .fontWeight(.light)
                        }.padding([.leading, .trailing], 5)
                        VStack{
                            Image("3prof")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60, height: 60)
                                .clipShape(Circle())
                            Text("zhan...")
                                .font(Font.system(size: 13))
                                .fontWeight(.light)
                        }.padding([.leading, .trailing], 5)
                        VStack{
                            Image("4prof")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60, height: 60)
                                .clipShape(Circle())
                            Text("ben.34")
                                .font(Font.system(size: 13))
                                .fontWeight(.light)
                        }.padding([.leading, .trailing], 5)
                    }
                }.padding(.top, 5)
                
                VStack(alignment: .leading) {
                    HStack {
                        Image("me")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                        
                        Text("thepranavk")
                            .bold()
                        Spacer()
                        Image(systemName: "ellipsis")
                        
                    }
                    Image("1post")
                        .resizable()
                        .scaledToFit()
                        .padding([.leading, .trailing], 0)
                    
                    HStack {
                        Image(systemName: "heart")
                        Image(systemName: "bubble.right")
                        Image(systemName: "paperplane")
                        Spacer()
                        Image(systemName: "bookmark")
                    }.padding(.top, 10).imageScale(.large)
                    
                    Text("53,636,794 likes")
                        .bold()
                        .padding(.top, 10)
                        .font(Font.system(size: 15))
                    HStack {
                        Text("thepranavk")
                            .font(Font.system(size: 15))
                            .bold()
                        Text("So Beautiful! Saw this in an aquarium in Antartica")
                            .font(Font.system(size: 15))
                    }.padding(.bottom, 0)
                    Text("View all 1,256 comments")
                        .font(Font.system(size: 15))
                        .color(Color.gray)
                        .padding(.bottom, 0)
                    
                    Text("6 hours ago")
                        .font(Font.system(size: 12))
                        .color(Color.gray)
                }
                
                VStack(alignment: .leading) {
                    HStack {
                        Image("0prof")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                        
                        Text("dyli.0005")
                            .bold()
                        Spacer()
                        Image(systemName: "ellipsis")
                        
                    }
                    Image("2post")
                        .resizable()
                        .scaledToFit()
                        .padding([.leading, .trailing], 0)
                    
                    HStack {
                        Image(systemName: "heart")
                        Image(systemName: "bubble.right")
                        Image(systemName: "paperplane")
                        Spacer()
                        Image(systemName: "bookmark")
                    }.padding(.top, 10).imageScale(.large)
                    
                    Text("8,978 likes")
                        .bold()
                        .padding(.top, 10)
                        .font(Font.system(size: 15))
                    HStack {
                        Text("dyli.0005")
                            .font(Font.system(size: 15))
                            .bold()
                        Text("WOOOOOSH! Running away from a rhino.")
                            .font(Font.system(size: 15))
                    }.padding(.bottom, 0)
                    Text("View all 334 comments")
                        .font(Font.system(size: 15))
                        .color(Color.gray)
                        .padding(.bottom, 0)
                    
                    Text("1d ago")
                        .font(Font.system(size: 12))
                        .color(Color.gray)
                }
                VStack(alignment: .leading) {
                    HStack {
                        Image("1prof")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                        
                        Text("alexa")
                            .bold()
                        Spacer()
                        Image(systemName: "ellipsis")
                        
                    }
                    Image("3post")
                        .resizable()
                        .scaledToFit()
                        .padding([.leading, .trailing], 0)
                    
                    HStack {
                        Image(systemName: "heart")
                        Image(systemName: "bubble.right")
                        Image(systemName: "paperplane")
                        Spacer()
                        Image(systemName: "bookmark")
                    }.padding(.top, 10).imageScale(.large)
                    
                    Text("13,678 likes")
                        .bold()
                        .padding(.top, 10)
                        .font(Font.system(size: 15))
                    HStack {
                        Text("alexa")
                            .font(Font.system(size: 15))
                            .bold()
                        Text("😲")
                            .font(Font.system(size: 15))
                    }.padding(.bottom, 0)
                    Text("View all 225 comments")
                        .font(Font.system(size: 15))
                        .color(Color.gray)
                        .padding(.bottom, 0)
                    
                    Text("11 hours ago")
                        .font(Font.system(size: 12))
                        .color(Color.gray)
                }
                VStack(alignment: .leading) {
                    HStack {
                        Image("2prof")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                        
                        Text("john")
                            .bold()
                        Spacer()
                        Image(systemName: "ellipsis")
                        
                    }
                    Image("4post")
                        .resizable()
                        .scaledToFit()
                        .padding([.leading, .trailing], 0)
                    
                    HStack {
                        Image(systemName: "heart")
                        Image(systemName: "bubble.right")
                        Image(systemName: "paperplane")
                        Spacer()
                        Image(systemName: "bookmark")
                    }.padding(.top, 10).imageScale(.large)
                    
                    Text("236,557 likes")
                        .bold()
                        .padding(.top, 10)
                        .font(Font.system(size: 15))
                    HStack {
                        Text("john")
                            .font(Font.system(size: 15))
                            .bold()
                        Text("#shotoniphone")
                            .font(Font.system(size: 15))
                    }.padding(.bottom, 0)
                    Text("View all 954 comments")
                        .font(Font.system(size: 15))
                        .color(Color.gray)
                        .padding(.bottom, 0)
                    
                    Text("2d ago")
                        .font(Font.system(size: 12))
                        .color(Color.gray)
                }
            }
                //            VStack(alignment: .leading){
                //                HStack {
                //                    Image("me")
                //                        .resizable()
                //                        .scaledToFit()
                //                        .frame(width: 40, height: 40)
                //                        .clipShape(Circle())
                //                    Text("thepranavk")
                //                        .bold()
                //                    Spacer()
                //                    Image(systemName: "ellipsis")
                //                }.padding()
                //
                //                Image("1post")
                //                    .resizable()
                //                    .scaledToFit()
                //
                //                HStack {
                //                    Image(systemName: "heart")
                //                    Image(systemName: "bubble.right")
                //                    Image(systemName: "paperplane")
                //                    Spacer()
                //                    Image(systemName: "bookmark")
                //                }.padding()
                //                Text("53,636,794 likes")
                //                    .bold()
                //                    .padding(.leading, 15)
                //                HStack {
                //                    Text("world_record_egg")
                //                        .bold()
                //
                //                    Text("Let's set a world record tog...")
                //                }
                //            }
                
                .navigationBarTitle(Text("Instagram"), displayMode: .inline)
                .navigationBarItems(leading: Image(systemName: "camera").imageScale(.large), trailing: Image(systemName: "paperplane").imageScale(.large))
        }
        .tabItem {
            Image(systemName: "house.fill")
                .imageScale(.large)
        }.tag(0)
    }
}

struct SearchView: View {
    var body: some View {
        Text("Search View")
            
        .tabItem {
                Image(systemName: "magnifyingglass")
                .imageScale(.large)
        }.tag(1)
    }
}

struct NewView: View {
    var body: some View {
        Text("New Post View")
            
            .tabItem {
                Image(systemName: "plus.square")
                    .imageScale(.large)
        }.tag(2)
    }
}

struct YouView: View {
    var body: some View {
        Text("You View")
            
            .tabItem {
                Image(systemName: "heart")
                    .imageScale(.large)
        }.tag(3)
    }
}

struct ProfileView: View {
    var body: some View {
        Text("Profile View")
            
            .tabItem {
                Image(systemName: "person")
                    .imageScale(.large)
        }.tag(4)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
