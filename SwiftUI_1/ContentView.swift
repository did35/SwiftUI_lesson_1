//
//  ContentView.swift
//  SwiftUI_1
//
//  Created by Didier Delhaisse on 26/05/2020.
//  Copyright © 2020 Didier Delhaisse. All rights reserved.
// =======================================================
// Magenta = Swift keywords
// Green = name
// Purple = Swift identifier
// =======================================================

import SwiftUI
// : View = meaning ContentView behave like a view. Functional programming, not OOP.
// : some View = data type.
// Text is a rectangle, so a view.

struct ContentView: View {
    var body: some View {
        // If you have no argument, the () can be removed.
        HStack {
            // ForEach = same as for the for in loop and it's use in arrays.
            // It returns 4 elements in a HStack combiner view.
            // See Appple documentattion for more info.
            // The return keyword is optional.
            // ForEach(argument 1, argument 2), if the last argument has a curly brace right behind {, the last argument name can be removed and left outside of the argument().
            ForEach(0..<4) { index in
                // Combiner view
                // We can factor out the ZStack code.
                // Encapsulation...
                CardView(isFaceUp: true)
            }
        }
            // Modifier
            .padding()
            .foregroundColor(.orange)
            .font(.largeTitle)
    }
}

struct CardView: View {
    // At initial time, the Bool must have a value as Swift is strongly typed.
    // So, either you initialise it here or you give a value at run time.
    var isFaceUp: Bool
    
    var body: some View {
        ZStack {
            // shapes can always be stroked
            // Any shapes that behave like a view, you can call the foregroundColor() func. and can override the general modifier.
            // .foregroundColor(color) can be set as general to the stack view.
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3.0)
                Text("👻")
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}




























// This struct is for the preview. We can leave it alone.
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
