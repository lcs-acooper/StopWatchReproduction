//
//  ContentView.swift
//  StopWatchReproduction
//
//  Created by  Adam-James  Cooper on 2023-11-03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            Color.black
            .ignoresSafeArea()
            
            VStack {
                
                Text("00:09.89")
                    .font(Font.system(size: 86, weight: .thin))
                    .foregroundColor(.white)
                
                //circle
                HStack {
                CircleSwiftUIView(
                    buttonColor: Color("Dark Grey"),
                    label: "Reset",
                    labelColor: .white
                    )
                    
                    Spacer()
                    
                    CircleSwiftUIView(
                        buttonColor: Color("Dark Green"),
                        label: "Start",
                        labelColor: .green)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
    
