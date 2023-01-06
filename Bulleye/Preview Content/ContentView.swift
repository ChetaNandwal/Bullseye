//
//  ContentView.swift
//  Bulleye
//
//  Created by chetan nandwal on 23/07/22.
//

import SwiftUI

struct ContentView: View {
    @State private var alertIsVisible: Bool = false
    @State private var sliderValue: Double = 50.0
    @State private var game: Game = Game()
    var body: some View {
        VStack {
            VStack {
                Text("🎯🎯🎯\nPUT THE THE BULLSEYE AS CLOSE AS YOU CAN")
                    .bold()
                    .kerning(2.0)
                    .multilineTextAlignment(.center)
                    .lineSpacing(4.0)
                    .font(.footnote)
                Text(String(game.target))
                    .kerning(-1.0)
                    .font(.largeTitle)
                    .fontWeight(.black)
               
                HStack {
                    Text("1")
                        .bold()
                    Slider(value: self.$sliderValue, in: 1.0...100.0)
                    Text("100")
                        .bold()
                }
                .padding()
               
                Button(action : {
                    self.alertIsVisible = true
                }){
                    Text("HIT ME")
                        .font(.title3)
                        .bold()
                }
                .padding(20.0)
                .background(Color.blue)
                .foregroundColor(Color.white)
                .cornerRadius(21.0)
                 
                
                .alert(isPresented: $alertIsVisible,
                       content: {
                    let roundedValue: Int =  Int(self.sliderValue.rounded())
                    return Alert(title: Text("Hello,There!"),message: Text("You Hit \(roundedValue).\n" + "You Scored \(self.game.points(slidervalue: roundedValue)) Points This Round."),dismissButton: .default(Text("Awesome")))
                })
                }
            }
        
        }
            
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
