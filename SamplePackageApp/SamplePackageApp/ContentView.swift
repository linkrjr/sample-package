//
//  ContentView.swift
//  SamplePackageApp
//
//  Created by Ronaldo Gomes on 2/3/2024.
//

import SwiftUI
import SamplePackage

struct ContentView: View {
    var body: some View {
        VStack {
					Text("Version: \(SamplePackage.version) asdfasdf asdf asd fsd")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
