//
//  LureColorButtonView.swift
//  decodeTest
//
//  Created by James Gentner on 12/12/23.
//

import SwiftUI

struct LureColorButtonView: View {
  // MARK: - Properties
  
  @Binding var lureColor: String
  @Binding var isShowingLureColor: Bool
  @Binding var lureKind: String

  var lureColors: String
  
  // MARK: - Body
  
    var body: some View {
      VStack {
        Button(action: {
          lureColor = lureColors
          isShowingLureColor = false
          print("You picked \(lureColors)")
        }, label: {
          Image(lureColors)
            .resizable()
            .scaledToFit()
            .frame(width: 200)
          Spacer()
          Text(lureColors)
            .font(.title3)
            .fontWeight(.bold)
            .multilineTextAlignment(.center)
            .padding(10)
        }) // BUTTON
        .frame(height: 100)
        .background(Color.orange)
        .cornerRadius(12)
        .padding(.vertical, 5)
        .padding(.horizontal, 10)
        
        
      } // VSTACK
    }
}

struct LureColorButtonView_Previews: PreviewProvider {
  @State static var lureColor: String = ""
  @State static var isShowingLureColor: Bool = true
  @State static var lureKind: String = ""
  static var previews: some View {
    LureColorButtonView(lureColor: $lureColor, isShowingLureColor: $isShowingLureColor, lureKind: $lureKind, lureColors: "Parakeet")
  }
}
