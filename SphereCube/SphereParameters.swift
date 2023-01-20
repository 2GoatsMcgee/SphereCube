//
//  SphereParmeters.swift
//  SphereCube
//
//  Created by IIT PHYS 440 on 1/19/23.
//

import SwiftUI

class SphereParameters: NSObject {
    func area_of_sphere(radius: Double) -> Double{
        return 4.0 * Double.pi * (radius ↑ (2.0))
    }
    func volume_of_sphere(radius: Double) -> Double{
        return (4.0 / 3.0) * Double.pi * (radius ↑ (3.0))
    }
}
