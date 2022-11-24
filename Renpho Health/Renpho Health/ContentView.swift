//
//  ContentView.swift
//  Renpho Health
//
//  Created by Filomena Vigliotti on 16/11/22.
//

import SwiftUI

/*struct Card{
 let prompt: String
 let answer: String
 
 static let example = Card(prompt: "Weight", answer: "E che ne so")
 static let cal = Card(prompt: "Calories", answer: "Non abbastanza")
 static let BMI = Card(prompt: "BMI", answer: "poi vedo")
 }*/




struct ContentView: View {
    
    var body: some View {
        NavigationView {
            TabView {
                Carousel()
                    .tabItem {
                        Label("Health", systemImage: "heart.text.square.fill")
                        Text("Health")
                    }
                
                Fitness()
                    .tabItem {
                        Label("Fitness", systemImage: "figure.walk")
                        Text("Fitness")
                    }
                
                Nutrition()
                    .tabItem {
                        Label("Nutrition", systemImage: "fork.knife")
                        Text("Nutrition")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
