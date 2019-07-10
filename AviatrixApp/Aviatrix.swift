//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class Aviatrix {
    
    //saying who created this place and arline
    var author = ""
    init(myAuthor:String){
        
    author = myAuthor
    
    }
    // this function should tell us if the airplane is running or not
    var running = false
    
    //starts airplane, so it means its running
    func start() -> Bool { //bool stand for boolean which means true or false
        running = true
        return running
    }
    
    func refuel() {
        
    }
    
    func flyTo(destination : String) {
        
    }
    
    func distanceTo(target : String) {
    
    }
    
    func knownDestinations() -> [String] {
       return ["St. Louis"]
    }
}
