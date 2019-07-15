import SwiftUI

struct ContentView : View {
    @State private var offset = CGSize(width: 0, height: 0)
    @State private var offset2 = CGSize(width: 0, height: 0)
    @State private var offset3 = CGSize(width: 0, height: 0)
    @State private var offset4 = CGSize(width: 0, height: 0)
    @State private var offset5 = CGSize(width: 0, height: 0)
    
    
    var body: some View {
        
        ZStack {
            PersonView(name: "Sangeetha Karthik", role: "Azure Architect", img: "01")
                .background(Color.purple)
                .cornerRadius(8)
                .shadow(radius: 8)
                .padding()
                .offset(x: offset4.width, y: offset4.height)
                .gesture(
                    DragGesture()
                        .onChanged {
                            self.offset4 = $0.translation }
                        .onEnded {
                            if $0.translation.width < -100 {
                                self.offset4 = .init(width: -1000, height: 0)
                            } else if $0.translation.width > 100 {
                                self.offset4 = .init(width: 1000, height: 0)
                            } else {
                                self.offset4 = .zero
                            }
                })
                .animation(.spring())
            
            PersonView(name: "Barry Allen", role: "The Flash", img: "02")
                .background(Color.red)
                .cornerRadius(8)
                .shadow(radius: 8)
                .padding()
                .offset(x: offset3.width, y: offset3.height)
                .gesture(
                    DragGesture()
                        .onChanged {
                            self.offset3 = $0.translation }
                        .onEnded {
                            if $0.translation.width < -100 {
                                self.offset3 = .init(width: -1000, height: 0)
                            } else if $0.translation.width > 100 {
                                self.offset3 = .init(width: 1000, height: 0)
                            } else {
                                self.offset3 = .zero
                            }
                })
                .animation(.spring())
            PersonView(name: "John Abraham", role: "GCP Architect", img: "03")
                .background(Color.blue)
                .cornerRadius(8)
                .shadow(radius: 8)
                .padding()
                .offset(x: offset2.width, y: offset2.height)
                .gesture(
                    DragGesture()
                        .onChanged {
                            self.offset2 = $0.translation }
                        .onEnded {
                            if $0.translation.width < -100 {
                                self.offset2 = .init(width: -1000, height: 0)
                            } else if $0.translation.width > 100 {
                                self.offset2 = .init(width: 1000, height: 0)
                            } else {
                                self.offset2 = .zero
                            }
                })
                .animation(.spring())
            
            
            PersonView(name: "Pranav Karthik", role: "iOS Developer", img: "me")
                .background(Color.green)
                .cornerRadius(8)
                .shadow(radius: 8)
                .padding()
                .offset(x: offset.width, y: offset.height)
                .gesture(
                    DragGesture()
                    .onChanged {
                        self.offset = $0.translation }
                    .onEnded {
                        if $0.translation.width < -100 {
                            self.offset = .init(width: -1000, height: 0)
                        } else if $0.translation.width > 100 {
                            self.offset = .init(width: 1000, height: 0)
                        } else {
                            self.offset = .zero
                        }
                })
                .animation(.spring())
        }
    }
}

struct PersonView: View {
    
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

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
