//
//  MostCommonCharacter.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func mostCommonCharacter(inventory: [UDItem]) -> Character? {
        if inventory.count == 0{
            return nil
        }else{
            
            var characters = [Character:Int]()
            
            //iterate through inventory items and get characters from names
            for item in inventory{
                let lowercaseName = item.name.lowercaseString
                
                for letter in lowercaseName.characters {
                    
                    if let _ = characters[letter] {
                        characters[letter]! += 1
                    }else{
                        characters[letter] = 1
                    }
                }
                
            }
            
            print (characters)
            
            // Find most common character
            var mostCommon: Character?
            var occurances: Int = 0
            
            for (char, number) in characters {
                if number > occurances {
                    mostCommon = char
                    occurances = number
                }
            }
            
            return mostCommon
        }
    }
}
