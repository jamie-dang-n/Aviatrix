//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class Aviatrix {
    
    var currentLocation = "St. Louis"
    var maxFuel = 5000
    var fuelLevel = 5000.0
    var milesPerGallon = 0.4
    var fuelCost = 0.0
    var distanceTraveled = 0
    
    
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
    
    func refuel() -> Double {
        let gallonsNeeded = Double(maxFuel)-fuelLevel
        let data = AviatrixData()
        fuelCost += gallonsNeeded * data.fuelPrices[currentLocation]!
        
        fuelLevel = 5000.0
        
        return gallonsNeeded
    }
    
    func flyTo(destination : String) {
        distanceTraveled += distanceTo(target: destination, current: currentLocation)
        let fuelUsed = Double(distanceTraveled) / milesPerGallon
        fuelLevel -= fuelUsed
        currentLocation = destination
    }
    
    //I want to tell every airplane that I create from this class how far places are
    //I need the place and distance
    func distanceTo(target : String, current: String) -> Int {
        //I need to get info from the AviatrixData file.
        let data = AviatrixData()
        return data.knownDistances[current]![target]!
        //Swift uses ! to mean not, but it aso uses it to say I know there is definitely data here
    }
    
    
    //I want to tell every plane that I create from the Aviatrix class where they can fly
    func knownDestinations() -> [String] {
        //change this function so I return all the options for destinations
        //I need to get information from the AviatrixData.swift file
    let data = AviatrixData()
        //I called the AviatrixData class
    return Array(data.knownDistances.keys)
        //I stored all of the keys or destinations in an Array
    }
}
