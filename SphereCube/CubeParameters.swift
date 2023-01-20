//
//  CubeParameters.swift
//  SphereCube
//
//  Created by IIT PHYS 440 on 1/19/23.
//

import SwiftUI

class CubeParameters: NSObject {
    ///Area of the Cube
    ///- Parameter radius: user inputs the radius
    ///- Returns: Surface area of a cube with the given radius
    func area_of_cube(radius: Double) -> Double{
        return 6*((radius) ↑ (2.0))
    }
    ///Volume of the Cube
    ///- Parameter radius: user inputs the radius
    ///- Returns: Volume of a cube with the given radius
    func volume_of_cube(radius: Double) -> Double{
        return ((radius) ↑ (3.0))
    }
}
