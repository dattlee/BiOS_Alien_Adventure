//
//  Settings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/18/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import UIKit

// MARK: - Settings

struct Settings {
                
    // MARK: Common
    
    struct Common {
        static let GameDataURL = NSBundle.mainBundle().URLForResource("GameData", withExtension: "plist")!
        static let Font = "Superclarendon-Italic"
        static let FontColor = UIColor.whiteColor()
        static var Level = 1
        static var ShowBadges = false
// Change Skip requests back to 0 to play full game
        static var RequestsToSkip = 5
    }
    
    // MARK: Dialogue (Set by UDDataLoader)
    
    struct Dialogue {
        static var StartingDialogue = ""
        static var RequestingDialogue = ""
        static var TransitioningDialogue = ""
        static var WinningDialogue = ""
        static var LosingDialogue = ""
    }
    
    // MARK: Names
    
    struct Names {
        static let Hero = "Hero"
        static let Background = "Background"
        static let Treasure = "Treasure"
    }
}
