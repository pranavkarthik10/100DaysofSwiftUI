//
//  ContentView.swift
//  Tip Calculator
//
//  Created by Pranav Karthik on 2019-07-05.
//  Copyright © 2019 Zandex Tech. All rights reserved.
//

import SwiftUI

struct MainView : View {
    
    @State private var totalInput: Double? = 18.94
    @State private var selectedTipPercentage = 0
    
    private var currencyFormatter: NumberFormatter = {
        let f = NumberFormatter()
        f.numberStyle = .currency
        return f
    }()
    
    private let tipPercentages = [0.10, 0.15, 0.20]
    
    private var percentageFormatter: NumberFormatter = {
        let f = NumberFormatter()
        f.numberStyle = .percent
        return f
        
    }()
    
    private var tipAmount: Double {
        let total = totalInput ?? 0
        let tipPercent = tipPercentages[selectedTipPercentage]
        return total * tipPercent
    }
    
    private var formattedTipAmount: String {
        currencyFormatter.string(from: NSNumber(value: tipAmount)) ?? "--"
    }
    
    private var finalTotal: Double {
        (totalInput ?? 0) + tipAmount
    }
    
    private var formattedFinalTotal: String {
        currencyFormatter.string(from: NSNumber(value: finalTotal
        )) ?? "--"
    }
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20){
                Spacer()
                TextField($totalInput, formatter: currencyFormatter)
                .font(.largeTitle)
                .padding()
                .background(Color.white)
                .multilineTextAlignment(.center)
                

                SegementedTipPercentages
                
                Divider()
                
                summaryLine(label: "Tip: ", amount: formattedTipAmount, color: .gray)
                
                summaryLine(label: "Total: ", amount: formattedFinalTotal, color: .green)
                Spacer()
            
            }
            .background(Color(white: 0.85, opacity: 1.0))
                .edgesIgnoringSafeArea(.all)
            .navigationBarTitle(Text("Tip Calculator"))
        }
    }
    
    private func summaryLine(label: String, amount: String, color: Color) -> some View {
        HStack {
            Spacer()
            Text(label)
                .font(.title)
                .foregroundColor(color)
            Text(amount)
                .font(.title)
                .foregroundColor(color)
        }.padding(.trailing)
    }
    
    private var SegementedTipPercentages: some View {
        SegmentedControl(selection: $selectedTipPercentage) {
            ForEach(0..<tipPercentages.count) { index in
                Text(self.formatPercent(self.tipPercentages[index])).tag(index)
            }
            
        }
    }
    
    private func formatPercent(_ p: Double) -> String {
        percentageFormatter.string(from: NSNumber(value: p)) ?? "--"
        }
}



#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
#endif
