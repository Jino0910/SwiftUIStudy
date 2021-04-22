//
//  Challenge_1.swift
//  My SwiftUI
//
//  Created by rowkaxl on 2021/04/22.
//

import SwiftUI

enum Mood: String {
    case happy = "😀"
    case sad = "☹️"
    case upsidedown = "🙃"
    case cat = "🐱"
}

struct Challenge_1: View {

    @State private var name: String = "Ozma"
    @State private var favoriteColor: Color = .green
    @State private var mood: Mood = .happy
    
    var body: some View {
        VStack {
            Text("Set your status:")
            StatusControl(name: $name,
                          favoriteColor: $favoriteColor,
                          mood: $mood)
                .padding()
            StatusIcon(name: name,
                       favoriteColor: favoriteColor,
                       mood: mood)
                .padding()
        }
        .padding(10)
    }
}

struct Challenge_1_Previews: PreviewProvider {
    static var previews: some View {
        Challenge_1()
    }
}

struct StatusControl: View {
    @Binding var name: String
    @Binding var favoriteColor: Color
    @Binding var mood: Mood
    var body: some View {
        VStack {
            TextField("name",
                      text: $name)
            ColorPicker("Favorite Color",
                        selection: $favoriteColor)
            Picker("Mood",
                   selection: $mood) {
                Text(Mood.happy.rawValue).tag(Mood.happy)
                Text(Mood.sad.rawValue).tag(Mood.sad)
                Text(Mood.upsidedown.rawValue).tag(Mood.upsidedown)
                Text(Mood.cat.rawValue).tag(Mood.cat)
            }
            .pickerStyle(SegmentedPickerStyle())
        }
    }
}

struct StatusIcon: View {
    let name: String
    let favoriteColor: Color
    let mood: Mood
    
    var body: some View {
        VStack{
            Text(mood.rawValue)
            Text(name)
                .foregroundColor(.white)
        }
        .font(.largeTitle)
        .padding()
        .background(favoriteColor)
        .cornerRadius(12)
    }
}
