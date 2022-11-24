//
//  Carousel.swift
//  Renpho Health
//
//  Created by Filomena Vigliotti on 17/11/22.
//

import SwiftUI

struct Carousel: View {
    
    @ObservedObject var userSettings = UserSettings()
    @State var weightView: Bool = false
    @State var caloriesView: Bool = false
    @State var bmiView: Bool = false
    
    @State var weight: Float = 0.0
    @State var calories: Float = 1560.0
    @State var bmi: Float = 25.0
    
    var body: some View {
        
        VStack {
            HStack {
                Text("Dashboard")
                    .font(.largeTitle)
                    .bold()
                    .padding(.leading)
                
                Spacer()
            }
            
            MyCard(title: "Weight", value: userSettings.weight)
                .onTapGesture {
                    weightView = true
                }
            
            NavigationLink("", destination: Weight(weight: $userSettings.weight), isActive: $weightView)
            
            MyCard(title: "Calories", value: calories)
                .onTapGesture {
                    caloriesView = true
                }
            
            NavigationLink("", destination: Weight(weight: $userSettings.weight), isActive: $caloriesView)
            
            MyCard(title: "BMI", value: bmi)
                .onTapGesture {
                    bmiView = true
                }
            
            NavigationLink("", destination: Weight(weight: $userSettings.weight), isActive: $bmiView)
        }
    }
}




/* func getScale(proxy: GeometryProxy) -> CGFloat{
 let midPoint: CGFloat = 125
 
 let viewFrame = proxy.frame(in: CoordinateSpace.global)
 
 var scale: CGFloat = 1.0
 let deltaXAnimationThreshold: CGFloat = 125
 
 let diffFromCenter = abs(midPoint - viewFrame.origin.x - deltaXAnimationThreshold / 2)
 if diffFromCenter < deltaXAnimationThreshold{
 scale = 1 + (deltaXAnimationThreshold - diffFromCenter) / 500
 }
 
 return scale
 }
 */


struct Carousel_Previews: PreviewProvider {
    static var previews: some View {
        Carousel()
    }
}
