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
                        LapTimeView(LapNumber: "Lap 5", LapTime: "00:00.98", LapColor: .white)
                        LapTimeView(LapNumber: "Lap 4", LapTime: "00:04.08", LapColor: .red)
                        LapTimeView(LapNumber: "Lap 3", LapTime: "00:00.96", LapColor: .green)
                        LapTimeView(LapNumber: "Lap 2", LapTime: "00:02.76", LapColor: .white)
                        LapTimeView(LapNumber: "Lap 1", LapTime: "00:01.16", LapColor: .white)
                    }
                    //Removing inset from line list
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    .listStyle(.plain)
                    
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
    TabView(selection: Binding.constant(3)) {
        
        Text("World Clock")
            .tabItem {
                Image(systemName: "globe")
                Text("World Clock")
            }
            .tag(1)
        
        Text("Alarm")
            .tabItem {
                Image(systemName: "alarm.fill")
                Text("Alarm")
            }
            .tag(2)
        ContentView()
            .tabItem {
                Image(systemName: "stopwatch.fill")
                Text("Stopwatch")
            }
            .tag(3)
        Text("Timer")
            .tabItem {
                Image(systemName: "timer")
                Text("Timer")
            }
            .tag(4)
        
        
        
    }
    
    //Accent changed
    .accentColor(.orange)
    //Prefered Colour Scheme
    .preferredColorScheme(.dark)
    

    

}
