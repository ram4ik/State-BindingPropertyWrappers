//
//  ContentView.swift
//  State&BindingPropertyWrappers
//
//  Created by Ramill Ibragimov on 27.01.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct Modal: View {
    @Binding var visibility: Bool
    
    var body: some View {
        Rectangle()
            .foregroundColor(.blue)
            .edgesIgnoringSafeArea(.all)
            .overlay (
                VStack {
                    Text("Your conter reached to 10")
                        .padding()
                    Button("Close") {
                        self.visibility = false
                    }.foregroundColor(.white)
                }
            )
    }
}

struct ContentView: View {
    @State private var counter: Int = 0
    @State private var visible: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                Text(String(self.counter))
                    .font(.system(size: 40))
                HStack {
                    Button("+") {
                        self.counter += 1
                        if self.counter == 10 {
                            self.visible = true
                            self.counter = 0
                        }
                    }.font(.system(size: 40))
                    Button("-") {
                        if self.counter > 0 {
                            self.counter -= 1
                        }
                    }.font(.system(size: 40))
                }
            }
            if self.visible {
                Modal(visibility: $visible)
                    .animation(.easeOut)
                    .offset(y: self.visible ? 0 : -10000)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
