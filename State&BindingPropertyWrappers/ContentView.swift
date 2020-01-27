//
//  ContentView.swift
//  State&BindingPropertyWrappers
//
//  Created by Ramill Ibragimov on 27.01.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("0")
                .font(.system(size: 40))
            HStack {
                Button("+") {
                    print("Increase")
                }.font(.system(size: 40))
                Button("-") {
                    print("Decrease")
                }.font(.system(size: 40))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
