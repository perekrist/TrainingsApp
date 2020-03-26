//
//  ContentView.swift
//  TrainingsApp
//
//  Created by Перегудова Кристина on 24.03.2020.
//  Copyright © 2020 perekrist. All rights reserved.
//

import SwiftUI
import VisionKit

struct ContentView: View {
    @State var isSheetShowing = false
    var body: some View {
        ZStack {
            VStack {
                
                HStack {
                    Spacer()
                    Button(action: {
                        self.isSheetShowing.toggle()
                    }) {
                        Image(systemName: "plus")
                            .font(.title)
                            .foregroundColor(.black)
                            .padding(.horizontal)
                    }
                }
                
                HStack {
                    Text("Habit")
                        .font(.title)
                        .padding(.horizontal)
                    Spacer()
                    ForEach(0 ..< 5){ i in
                        Text("\(i*5)")
                    }
                }
                
                ScrollView {
                    ForEach((0 ..< 10), id: \.self) { card in
                        HabitView()
                    }
                }
                
                
                Spacer()
            }.padding(.top, 50)
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
