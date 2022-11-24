//
//  MyCard.swift
//  Renpho Health
//
//  Created by Filomena Vigliotti on 22/11/22.
//

import SwiftUI

struct MyCard: View {
    
    let title: String
    var value: Float
    
    /*init(title: String, value: Float) {
        self.title = title
        self.value = value
    }*/
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20, style: .circular)
                .fill(.white)
                .shadow(radius: 2)
            
            VStack{
                HStack{
                    Text(Image(systemName: "circle.inset.filled"))
                        .font(.title2)
                        .foregroundColor(.blue)
                        .padding(.top)
                    
                    Text(title)
                        .font(.title)
                        .foregroundColor(.black)
                        .padding(.top)
                }
                
                Text(String(format: "%.2f", value))
                    .foregroundColor(.black)
                    .padding(.bottom)
                //.frame(width: 130)
                    .padding(.leading)
                    .lineLimit(1)
                    .minimumScaleFactor(0.6)
                    .font(.system(size: 40))
                
                
            }
            .padding(.trailing, 190)
            .multilineTextAlignment(.leading)
            .lineLimit(nil)
            .padding()
            //  Spacer()
            
        }
        .frame(width: 355, height: 160)
        /*  .onTapGesture {
         addWeight.toggle()
         }*/
        .padding(.bottom)
    }
}

/*struct MyCard_Previews: PreviewProvider {
    static var previews: some View {
        MyCard(title: "Title", value: 99)
    }
}*/
