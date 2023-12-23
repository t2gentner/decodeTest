//
//  ContentView.swift
//  decodeTest
//
//  Created by James Gentner on 12/12/23.
//

import SwiftUI



struct ContentView: View {
  // MARK: - Properties
  @State private var selectedLure = ""
  @State private var selectedColor = ""
  
  // MARK: - Body
  
  var body: some View {
    VStack(alignment: .trailing) {
     LureKindTestView(selectedLure: $selectedLure, selectedColor: $selectedLure)
      
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
