//
//  ContentView.swift
//  Day11
//
//  Created by Pranav Karthik on 2019-07-18.
//  Copyright © 2019 Zandex Tech. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var enlarged = false
    @State var colorSwitch = false
    
    
    var body: some View {
            Rectangle()
                .frame(width: 300, height: 300)
                .cornerRadius(30)
                .padding()
                .contextMenu {
                    Button(enlarged ? "Shrink": "Enlarge") {
                        self.enlarged.toggle()
                    }
                    Button("Change Color") {
                        self.colorSwitch.toggle()
                    }
            }
                .scaleEffect(enlarged ? 1.5 : 1)
                .foregroundColor(colorSwitch ? Color.green : Color.blue)

    }
}
#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
