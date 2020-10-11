//
//  MultiButton.swift
//  MultiButton
//
//  Created by Robin Kment on 11.10.2020.
//

import SwiftUI

struct MultiButton<Label>: View where Label : View  {
    var action: () -> Void
    var label: () -> Label
    
    #if os(iOS)
    private var button: some View {
        Button(action: action, label: label)
    }
    #endif
    
    #if os(macOS)
    private var button: some View {
        label()
            .onTapGesture(perform: action)
    }
    #endif
 
    var body: some View {
       button
    }
}

struct MultiButton_Previews: PreviewProvider {
    
    static func action() {}
    
    static var previews: some View {
        VStack {
            MultiButton(action: action) {
                Text("Hello world")
            }
            
            MultiButton {
                print("Hello, world!")
            } label: {
                HStack {
                    Image(systemName: "xmark.circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.gray)
                        .background(Circle().foregroundColor(.white))
                        .frame(width: 30, height: 30)
                }
            }
        }
    }
}
