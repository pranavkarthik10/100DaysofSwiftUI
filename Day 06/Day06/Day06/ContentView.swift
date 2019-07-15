//
//  ContentView.swift
//  Day06
//
//  Created by Pranav Karthik on 2019-07-12.
//  Copyright © 2019 Zandex Tech. All rights reserved.
//

import Combine
import SwiftUI

class Order: BindableObject{
    
    
    var didChange = PassthroughSubject<Void, Never>()
    
    static let types = ["Vanilla", "Chocolate", "Strawberry", "Rainbow"]
    
    var type = 0 { didSet { update() } }
    var quantity = 3 { didSet { update() } }
    
    var specialRequestEnabled = false { didSet { update() } }
    var extraFrosting = false { didSet { update() } }
    var addSprinkes = false { didSet { update() } }
    
    var name = "" { didSet { update() } }
    var streetAddress = "" { didSet { update() } }
    var city = "" { didSet { update() } }
    var zip = "" { didSet { update() } }
    
    var isValid: Bool {
        if name.isEmpty || streetAddress.isEmpty || city.isEmpty || zip.isEmpty {
            return false
        }
        return true
    }
    
    func update() {
        didChange.send(())
    }
}

struct ContentView : View {
    @ObjectBinding var order = Order()
    
    @State var confirmationMessage = ""
    @State var showingConfirmation = false
    
    var body: some View {
        NavigationView {
            Form {
                Section{
                Picker(selection: $order.type, label: Text("Select your cake type")) {
                    ForEach(0 ..< Order.types.count) {
                        Text(Order.types[$0]).tag($0)
                    }
                }
                
                Stepper(value: $order.quantity, in: 3...20) {
                    Text("Number of cakes: \(order.quantity)")
                }
                
                    if order.quantity == 20 {
                        Text("Max number of cakes")
                            .font(.body)
                            .color(Color.red)
                    }
                
                }
                Section{
                    Toggle(isOn: $order.specialRequestEnabled) {
                        Text("Extra options")
                    }
                    
                    if order.specialRequestEnabled {
                        Toggle(isOn: $order.extraFrosting) {
                        Text("Add extra frosting")
                        }
                    
                        Toggle(isOn: $order.addSprinkes) {
                        Text("Add sprinkles")
                        }
                    }

                }
                Section {
                    TextField($order.name, placeholder: Text("Name: "))
                    TextField($order.streetAddress, placeholder: Text("Street Address: "))
                    TextField($order.city, placeholder: Text("City: "))
                    TextField($order.zip, placeholder: Text("Zipcode: "))
                    
                }
                
                Section {
                    Button(action: {self.placeOrder()}) {
                        Text("Place Order")
                    }
                }.disabled(!order.isValid)
            } .navigationBarTitle(Text("Cupcake Corner"))
                .presentation($showingConfirmation) {
                    Alert(title: Text("Thank you!"), message: Text(confirmationMessage), dismissButton: .default(Text("OK")))
            }
        }
        
    }
    
    func placeOrder() {
        self.confirmationMessage = "Your order for \(order.quantity)x \(Order.types[order.type].lowercased()) cupcakes is on its way!"
        self.showingConfirmation = true
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
