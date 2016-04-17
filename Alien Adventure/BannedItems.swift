//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func bannedItems(dataFile: String) -> [Int] {
        
        let dataFileURL = NSBundle.mainBundle().URLForResource(dataFile, withExtension: "plist")!
        let dataArray = NSArray(contentsOfURL: dataFileURL) as! [[String:AnyObject]]
        var bannedItems = [Int]()
        
        for item in dataArray {
            
            var itemName: String?
            var itemAge: Int?
            
            if let name = item["Name"] as? String {
                itemName = name
            }
            
            if let history = item["HistoricalData"] as? [String:AnyObject]{
                if let age = history["CarbonAge"] as? Int {
                    itemAge = age
                }
            }
            
            // Do I need optionally unwrap itemName and itemAge?
            if itemName!.lowercaseString.containsString("laser") && itemAge! < 30 {
                print("\(itemName!) has a Carbon age of \(itemAge!) and is banned")
                bannedItems.append(item["ItemID"] as! Int)
            } else {
                print("\(itemName!) has a Carbon age of \(itemAge!) is not banned and has been kept")
            }
        }
        
        return bannedItems
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 6"