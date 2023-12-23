//
//  LureKindView.swift
//  decodeTest
//
//  Created by James Gentner on 12/23/23.
//

import SwiftUI

struct LureKindView: View {
  // MARK: - Properties
  @Binding var selectedLure: String
  @Binding var selectedColor: String
  // also put this all on one page with the selected lure and color
  
//  let lureKind: [String] = Array(RodSettings().lureKindList.keys.sorted())  
  let lureKind: [String: String] = RodSettings().lureKindList
  
  let lureLists: [Lures] = Bundle.main.decode("lures.json")
  
  // need to decode the colors for the name of the lure
  // MARK: - Body
  var body: some View {
    VStack {
      
      // MARK: - Lure Selection
      HStack {
        if let imageName = lureKind[selectedLure] {
                Image(imageName)
                      .resizable()
                      .scaledToFit()
                      .frame(width: 100)
      } else {
                Image(systemName: "gear.badge.xmark")
                      .resizable()
                      .scaledToFit()
                      .frame(width: 100)
              }
        Spacer()
        VStack(alignment: .trailing) {
          Text("Select Your Lure")
            .fontWeight(.bold)
          Picker("Selection", selection: $selectedLure) {
            ForEach(Array(lureKind.keys.sorted()), id: \.self) { lure in
              Text(lure)
            } // LOOP
          } // PICKER
        }
      }// HSTACK LURE SELECTION
      .padding(.bottom, 5)
    }
  }
}
  struct LureKindView_Previews: PreviewProvider {
    @State static var selectedLure = "Jet"
    @State static var selectedColor = "Parakeet"
    
    static var previews: some View {
      LureKindView(selectedLure: $selectedLure, selectedColor: $selectedColor)
    }
  }

