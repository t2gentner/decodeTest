//
//  LureColorView.swift
//  decodeTest
//
//  Created by James Gentner on 12/12/23.
//
import SwiftUI

struct LureColorView: View {
    let lureLists: [Lures] = Bundle.main.decode("lures.json")
    @Binding var lureColor: String
    @Binding var isShowingColor: Bool
    @Binding var lureKind: String
    
    var body: some View {
        VStack {
            ScrollView {
                ForEach(lureLists) { lure in
                    if lure.name == lureKind { 
                        ForEach(lure.colors, id: \.self) { color in
                          LureColorButtonView(
                            lureColor: $lureColor,
                            isShowingLureColor: $isShowingColor,
                            lureKind: $lureKind,
                            lureColors: color)
//                            Button(action: {
//                                lureColor = color
//                              isShowingColor = false
//                              print(color)
//                                //isShowingLureColor = true
//                            }) {
//                                Text(color)
//                                    .padding()
//                                    .background(Color.blue)
//                                    .foregroundColor(Color.white)
//                                    .cornerRadius(8)
//                            }
                        }
                    }
                }
            }
        }
    }
}


struct LureColorView_Previews: PreviewProvider {
  @State static var isShowingColor: Bool = true
  @State static var lureKind: String = "Deep Bandit"
  @State static var lureColor: String = "Party Zebra"
  
  static var previews: some View {
    LureColorView(lureColor: $lureColor, isShowingColor: $isShowingColor, lureKind: $lureKind)
  }
}
