//
//  CircleSwiftUIView.swift
//  StopWatchReproduction
//
//  Created by  Adam-James  Cooper on 2023-11-05.
//

import SwiftUI

struct CircleSwiftUIView: View {
    
    let buttonColor : Color
    let label: String
    let labelColor: Color
    
    
    
    var body: some View {
        ZStack {
            //first layer
            Circle()
                .foregroundColor(buttonColor)
                .frame(width: 100)
            
            //second layer
            Circle()
                .foregroundColor(.black)
                .frame(width: 93)
            
            //third layer
            Circle()
                .foregroundColor(buttonColor)
                .frame(width: 89 )
            
            //fourth layer
            Text(label)
                .foregroundColor(labelColor)
            .font(.title2)
        }
    }
}

#Preview {
    CircleSwiftUIView(
        buttonColor: .gray,
        label: "Reset",
        labelColor: .white)
}
