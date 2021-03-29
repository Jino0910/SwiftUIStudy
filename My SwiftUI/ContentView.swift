//
//  ContentView.swift
//  My SwiftUI
//
//  Created by rowkaxl on 2021/03/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("monster")
            .resizable()
            .scaledToFit()
            .border(Color.green, width: 5)
            .shadow(radius: 15)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            
        }
    }
}
