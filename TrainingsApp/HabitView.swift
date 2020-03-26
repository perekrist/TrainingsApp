//
//  HabitView.swift
//  TrainingsApp
//
//  Created by Кристина Перегудова on 26.03.2020.
//  Copyright © 2020 perekrist. All rights reserved.
//

import SwiftUI

struct HabitView: View {
    
    @State var done: [Bool] = [false, false, false, false, false]
    @State var percent: CGFloat = 0
    var body: some View {
        ZStack {
            HStack {
                Circle()
                    .foregroundColor(.yellow)
                    .frame(width: self.percent, height: self.percent)
                .padding()
                Spacer()
            }
            
            VStack {
                HStack {
                    Text("0%")
                    .frame(width: 40, height: 40)
                    .padding()
                    Spacer()
                    
                    ForEach((0 ..< done.count), id: \.self) {i in
                        Button(action: {
                            self.done[i].toggle()
                            self.percentCount()
                        }) {
                            if self.done[i] == true {
                                Image(systemName: "checkmark")
                                    .renderingMode(.original)
                                    .padding()
                            } else {
                                Image(systemName: "circle.bottomthird.split")
                                    .renderingMode(.original)
                                    .padding()
                            }
                            
                        }
                    }
                    
                }
                HStack {
                    Text("Hello, It's your hobit!!")
                        .font(.title)
                        .padding(.horizontal)
                    Spacer()
                }
                    
            }
            
        }
        .frame(height: 130)
        .background(Color.gray)
        .cornerRadius(15)
        .padding(.vertical, 5)
        .padding(.horizontal, 15)
    }
    
    func percentCount() {
        var count: CGFloat = 0
        for i in done {
            if i {
                count += 1
            }
        }
        
        percent = count * 35
    }
}

struct HabitView_Previews: PreviewProvider {
    static var previews: some View {
        HabitView()
            .previewLayout(.sizeThatFits)
    }
}
