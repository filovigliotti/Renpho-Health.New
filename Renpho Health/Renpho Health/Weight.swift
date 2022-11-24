//
//  Weight.swift
//  Renpho Health
//
//  Created by Filomena Vigliotti on 18/11/22.
//

import SwiftUI


struct Weight: View {
    
    @State private var currentDate = Date()
    @State private var recording = false
    @State private var height = 50
    @Binding var weight: Float
    @ObservedObject var userSettings = UserSettings()
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    /*   let formatter: NumberFormatter = {
     let formatter = NumberFormatter()
     formatter.numberStyle = .decimal
     return formatter
     }()
     */
    // @State private var time =
    
    var body: some View {
        
        VStack{
            List{
                
                DatePicker("Date", selection: $currentDate, displayedComponents: [.date])
                    .foregroundColor(.gray)
                
                
                DatePicker("Time", selection: $currentDate, displayedComponents: [.hourAndMinute])
                    .foregroundColor(.gray)
                
                Picker("Height", selection: $userSettings.height){
                    ForEach (40..<230){
                        Text("\($0) cm")
                    }
                }.foregroundColor(.gray)
                /*    Picker("Height", selection: $height){
                 ForEach (40..<230){
                 Text("\($0) cm")
                 }
                 }.foregroundColor(.gray)*/
                
                VStack{
                    Section{
                        Text("Weight")
                            .font(.title)
                            .padding(.trailing, 220)
                            .padding(.top)
                            .foregroundColor(.black)
                        TextField("kg", value: $weight, format: .number)
                            .textFieldStyle(.roundedBorder)
                            .font(.system(size: 36))
                            .keyboardType(.decimalPad)
                        
                    }
                }
                /*
                 VStack{
                 Section{
                 Text("Weight")
                 .font(.title)
                 .padding(.trailing, 220)
                 .padding(.top)
                 .foregroundColor(.black)
                 TextField("kg", value: $weight, format: .number)
                 .textFieldStyle(.roundedBorder)
                 .font(.system(size: 36))
                 .keyboardType(.decimalPad)
                 
                 }
                 }
                 */
                
                
            }
            .scrollContentBackground(.hidden) //used to remove the gray background of the list

            
            Button("Recording"){
                
                self.presentationMode.wrappedValue.dismiss()
                // recording.toggle()
            }
            .buttonStyle(GrowingButton())
            
            /*  if recording{
             MyCard(title: "Weight" , value: userSettings.weight)
             
             }*/
        }
        .navigationTitle("Add Weight")
    }
}

struct GrowingButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(width: 200, height: 80)
            .background(.blue)
            .font(.title)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .scaleEffect(configuration.isPressed ? 1.3 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}


struct Weight_Previews: PreviewProvider {
    static var previews: some View {
        Weight(weight: .constant(20.0))
    }
}


