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
                
                Spacer()
                
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
                
                
                //Listing Numbers
                List {
                    Group {
                        Text ("1")
                        Text ("2")
                        Text ("3")
                        Text ("4")
                        Text ("5")
                    }
                    //Removing inset from line list
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    
                }
                
                //Set amount of vertical height taken
                .frame(height: 300)
                //Adjusting the type of list
                .listStyle(.plain)
                
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
    
