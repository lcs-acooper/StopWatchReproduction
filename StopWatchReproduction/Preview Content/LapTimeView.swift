//
//  LapTimeView.swift
//  StopWatchReproduction
//
//  Created by  Adam-James  Cooper on 2023-11-13.
//

import SwiftUI

struct LapTimeView: View {
    
    let LapNumber: String
    let LapTime: String
    let LapColor: Color
    
    
    
    
    var body: some View {
        HStack {
            Text(LapNumber)
                .foregroundColor(LapColor)
                .bold()
                .font(.title3)
            Spacer()
            Text(LapTime)
                .foregroundColor(LapColor)
                .bold()
                .font(.title3)
               
        }
        .padding()
    }
}


#Preview {
    LapTimeView(LapNumber: "Lap 1", LapTime: "00.09.25", LapColor: .green)
}
