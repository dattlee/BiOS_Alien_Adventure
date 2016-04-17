//
//  OldestItemFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func oldestItemFromPlanet(inventory: [UDItem], planet: String) -> UDItem? {
        
        let pack = itemsFromPlanet(inventory, planet: planet)
        //for item in pack {
        //    print (item.name)
        //}
        var oldest:UDItem? = nil
        
        for item in pack {
            if let itemAge = item.historicalData["CarbonAge"] as? Int{
                //print(itemAge)
                if let next = oldest{
                    if let oldestAge = next.historicalData["CarbonAge"] as? Int {
                        //print(oldestAge)
                        if oldestAge < itemAge {
                            oldest = item
                        }
                    }
                }else{
                    oldest = item
                }
            }
        }
        
        return oldest
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 2"