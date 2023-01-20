//
//  SphereParmeters.swift
//  SphereCube
//
//  Created by IIT PHYS 440 on 1/19/23.
//

import SwiftUI

class SphereParameters: NSObject {
    
    ///Area of the Sphere
    ///- Parameter radius: user inputs the radius
    ///- Returns: Area of a Sphere with the given radius
    ///                2
    /// Area = 4 * π radius 
    func area_of_sphere(radius: Double) -> Double{
        return 4.0 * Double.pi * (radius ↑ (2.0))
    }
    
    ///Volume of the Sphere
    ///- Parameter radius: user inputs the radius
    ///- Returns: Volume of a Sphere with the given radius
    func volume_of_sphere(radius: Double) -> Double{
        return (4.0 / 3.0) * Double.pi * (radius ↑ (3.0))
    }
}
