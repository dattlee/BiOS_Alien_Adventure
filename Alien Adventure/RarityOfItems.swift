//
//  RarityOfItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func rarityOfItems(inventory: [UDItem]) -> [UDItemRarity:Int] {
        var howMany: [UDItemRarity:Int]
        howMany = [ .Common: 0, .Uncommon: 0, .Rare: 0, .Legendary: 0 ]
        
        
        for item in inventory{
            switch item.rarity {
            case .Common:
                howMany[.Common]? += 1
            case .Uncommon:
                howMany[.Uncommon]? += 1
            case .Rare:
                howMany[.Rare]? += 1
            case .Legendary:
                howMany[.Legendary]? += 1
            }
        }
        
        return howMany
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"