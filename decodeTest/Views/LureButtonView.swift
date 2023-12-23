//
//  LureButtonView.swift
//  decodeTest
//
//  Created by James Gentner on 12/12/23.
//

import SwiftUI

struct LureButtonView: View {
  // MARK: - Properties
  
  @Binding var lureKind: String
  @Binding var isLureShowing: Bool

  var lureNames: String
  
  // MARK: - Body
  
    var body: some View {
      VStack {
        Button(action: {
          lureKind = lureNames
          isLureShowing = false
          print("You picked \(lureNames)")
        }, label: {
          Image(lureNames)
            .resizable()
            .scaledToFit()
            .frame(width: 200)
          Spacer()
          Text(lureNames)
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


struct LureButtonView_Previews: PreviewProvider {
  @State static var lureKind: String = ""
  @State static var isLureShowing: Bool = true
  static var previews: some View {
    LureButtonView(lureKind: $lureKind, isLureShowing: $isLureShowing, lureNames: "Deep Bandit")
  }
}
