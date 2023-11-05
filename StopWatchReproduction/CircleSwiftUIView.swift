//
//  CircleSwiftUIView.swift
//  StopWatchReproduction
//
//  Created by  Adam-James  Cooper on 2023-11-05.
//

import SwiftUI

struct CircleSwiftUIView: View {
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
    CircleSwiftUIView()
}
