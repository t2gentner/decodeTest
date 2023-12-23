//
//  LuresModel.swift
//  decodeTest
//
//  Created by James Gentner on 12/12/23.
//

import SwiftUI

struct Lures: Codable, Identifiable , Hashable{
  var id: Int
  let name: [String: String]
  let colors: [String: String]
}
