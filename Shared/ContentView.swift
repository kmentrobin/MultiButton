//
//  ContentView.swift
//  Shared
//
//  Created by Robin Kment on 11.10.2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MultiButton {
            print("Hello there")
        } label: {
            Text("Hello Obi-wan")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
