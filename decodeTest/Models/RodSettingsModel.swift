//
//  RodSettingsModel.swift
//  decodeTest
//
//  Created by James Gentner on 12/23/23.
//

import Foundation

struct RodSettings {
  // lists and dictionaries for different slider and picker views
  let planerTypeList = [
    "All Selections Here": "",
    "Planer Board": "Planer",
    "Jet Diver: 20": "Jet",
    "Jet Diver: 30": "Jet",
    "Jet Diver: 40": "Jet",
    "Jet Diver: 50": "Jet",
    "Tru-Trip: 30": "TruTrip",
    "Tru-Trip: 40": "TruTrip",
    "Tru-Trip: 50": "TruTrip",
    "Dipsy Diver: 0": "Dipsy",
    "Dipsy Diver: 1": "Dipsy",
    "Dipsy Diver: 2": "Dipsy",
    "Dipsy Diver: 3": "Dipsy"
  ]
  let lineTypeList = ["Mono", "Braid", "Lead Core", "Wire"]
  let lineTestList = ["10", "15", "20", "25", "30"]
  let snapWeightList = ["1 OZ", "2 OZ", "3 OZ", "4 OZ"]
  let lureKindList = [
    "Bandit Deep": "DeepBandit",
    "Bandit Shallow": "BanditShallow",
    "Top 20 Rogue": "Top20Rogue",
    "Perfect 10": "Perfect10",
    "Husky Jerk 14": "HuskyJerk14",
    "Deep Husky Jerk 12": "DeepHuskyJerk",
    "Deep Husky Jerk Jointed": "DeepJointedHuskyJerk",
    "Berkley Flicker Minnow": "BerkleyFlickerMinnow",
    "Michigan Stinger": "MichiganStinger",
    "Michigan Scorpion": "MichiganStinger",
    "F 18": "F18",
    "Reef Runner 800": "ReefRunner800"
  ]
  
  //Settings for each individual rod once setup will save this data to a save container
  var fishPerRod = 0
  var fishRodNum = 0
  var boatSide = ""
  var lineType = ""
  var lineTest = 0
  var planerType = ""
  var leadLength = 0
  // this is an important button and have to have it for a picker
  // if its no then we wont add a snap weight
  var doesHasSnapWeight: Bool = false
  var snapWeight = ""
  var snapLeadLength = 0
  var lureKind = ""
  var lureColor = ""
  var timeStamp = Date() // need to load from class?? better yet include a func in struct
  var latNum = 0.0   // can we just load from class the current stuff here from
  var longNum = 0.0   // button press below?
  var currentSpeed = 0.0
  var currentDirection = 0.0
  
  // BOOLEANS FOR CHECKING SETUPS OR FILLED INFO
  var isSetup = false
  
  // BOOLEANS FOR OTHER VIEWS
  var isShowingRodSettings = false // this will show the rod settings screen and full screen with a dismiss button or X button
  var isLogScreen = false // this is screen when you click on the log fish button and pops up asking if log fish, setup , or keeper
  
  // func here to run class calculations for above
  
  // func here to save the data to container
  // func here to
}
