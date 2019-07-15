//
//  ContentView.swift
//  FlagGuesser
//
//  Created by Pranav Karthik on 2019-07-11.
//  Copyright © 2019 Zandex Tech. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    
    
    
    var body: some View {
        NavigationView {
            
            NavigationLink(destination: MainView()){
                Text("Play")
                    .color(Color.white)
                    .frame(width: 100, height: 50)
                    .background(Color.blue)
                    .font(.title)

            }.cornerRadius(19).navigationBarBackButtonHidden(true)

            .navigationBarTitle(Text("Which Flag is it?"))
        }
    }
}

struct MainView : View {

    @State private var countries = ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "us", "uk"].shuffled()
    
    @State private var correctAnswer = Int.random(in: 0...2)
    
    @State private var score = 0
    @State private var alertTitle = ""
    @State private var showingAlert = false
    
    @State private var gameEnd = false
    @State private var endResult = ""
    
    @State var count = 5
    
    let timer = Timer.publish(every: 1, on: .current, in: .common).autoconnect()
    
    
    var body: some View {
        
        
        NavigationView{
            VStack {
                Text("\(count)")
                    .font(.largeTitle)
                    .bold()
                    .onReceive(timer) {
                        self.count = self.count - 1
                        if self.count == 0 {
                            self.timeUp()
                        }
                }
                

                
                ForEach(0...2) { number in
                    Image(self.countries[number])
                        .border(Color.black, width: 1)
                        .tapAction {
                            self.flagTapped(number)
                    }
                }
            }
            .navigationBarTitle(Text("Which flag is " + countries[correctAnswer].uppercased()+"?"))
                .navigationBarBackButtonHidden(true)
                .presentation($showingAlert) {
                    Alert(title: Text(alertTitle), message: Text("Your score is \(score)"), dismissButton: .default(Text("Continue")){
                        self.askQuestion()
                        })
            }
            
        }
    }
    
    func timeUp() {
        alertTitle = "Time's Up!"
        score -= 1
        showingAlert = true
        if score == -5 {
            endResult = "Game Over"
            gameEnd = true
        }
    }
    
    func flagTapped(_ tag: Int) {
        if tag == correctAnswer {
            // right!
            score += 1
            alertTitle = "Correct!"
        }
        else {
            // incorrect
            score -= 1
            alertTitle = "Wrong!"
        }
        
        if score == -5 {
            endResult = "Game Over"
            gameEnd = true
        }
        
        if score == 5 {
            endResult = "Winner!"
            gameEnd = true
            
        }
        showingAlert = true
    }
    
    func askQuestion() {
        countries.shuffle()
        self.count = 5
        correctAnswer = Int.random(in: 1...2)
    }
}


#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
