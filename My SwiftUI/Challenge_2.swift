//
//  Challenge_2.swift
//  My SwiftUI
//
//  Created by rowkaxl on 2021/03/29.
//

import SwiftUI

struct Challenge_2: View {
    var body: some View {
        VStack {
            Image(systemName: "sun.max.fill")
                .renderingMode(.original)
                .resizable()
                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Text("Sunny")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Text("H: 61° L: 44°")
                .foregroundColor(.white)
                .opacity(0.8)
        }
        .padding()
        .background(
            LinearGradient(gradient: Gradient(colors: [Color.white,
                                                       Color.blue]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
        )
        .cornerRadius(12)
        
    }
}

struct Challenge_2_Previews: PreviewProvider {
    static var previews: some View {
        Challenge_2()
    }
}
