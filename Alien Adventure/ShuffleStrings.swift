//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func shuffleStrings(s1 s1: String, s2: String, shuffle: String) -> Bool {
        //shuffle search function
        func contained(sub: String, full:String) -> Bool{
            if sub == "" {
                return true
            }
            var sIndex = 0 // sub index
            var fIndex = 0 // full index
            
            while fIndex<full.characters.count && sIndex<sub.characters.count{
                if sub[sub.startIndex.advancedBy(sIndex)] == full[full.startIndex.advancedBy(fIndex)]{
                    sIndex += 1
                }
                fIndex += 1
            }
            //print(sIndex)
            // if sIndes is same as character count then all characters where present
            return sIndex == sub.characters.count
        }
        
        if s1 == "" && s2 == "" && shuffle == ""{
            return true
        }else if shuffle.characters.count != s1.characters.count + s2.characters.count{
            return false
        }else{
            return contained(s1, full: shuffle) && contained(s2, full: shuffle)
        }
    }
}
