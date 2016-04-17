//
//  PlanetData.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {
    
    func planetData(dataFile: String) -> String {
        
        let planetDataJSON = NSBundle.mainBundle().URLForResource(dataFile, withExtension: "json")!
        let rawPlanetDataJSON = NSData(contentsOfURL: planetDataJSON)!
        
        var planetDataDictionaries: [[String:AnyObject]]!
        do {
            planetDataDictionaries = try! NSJSONSerialization.JSONObjectWithData(rawPlanetDataJSON, options: NSJSONReadingOptions()) as! [[String:AnyObject]]
        }
        
        
        
        var bestPlanet:String = ""
        var bestPlanetScore: Int = 0
        
        
        for planet in planetDataDictionaries {
            
            var planetScore: Int = 0
            
            planetScore += planet["CommonItemsDetected"] as! Int * 1
            planetScore += planet["UncommonItemsDetected"] as! Int  * 2
            planetScore += planet["RareItemsDetected"] as! Int  * 3
            planetScore += planet["LegendaryItemsDetected"] as! Int  * 4
            
            if planetScore > bestPlanetScore {
                bestPlanetScore = planetScore
                bestPlanet = planet["Name"] as! String
            }
            
        }
        
        return bestPlanet
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 7"