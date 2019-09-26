//
//  ContentView.swift
//  UsingModalsInSwiftUI
//
//  Created by ramil on 26/09/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var isVisible: Bool = false
    
    var body: some View {
        Button(action: {
            self.isVisible.toggle()
        }) {
            Text("Sign in")
        }.sheet(isPresented: $isVisible) {
            Text("Registration page")
                .font(.largeTitle)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
