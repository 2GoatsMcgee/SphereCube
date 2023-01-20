//
//  ContentView.swift
//  SphereCube
//
//  Created by IIT PHYS 440 on 1/19/23.
//

import SwiftUI

struct ContentView: View {
    /// This Initializes the variables
    @State var radius: String = ""
    @State var area_of_sphere = 0.0
    @State var volume_of_sphere = 0.0
    @State var area_of_cube = 0.0
    @State var volume_of_cube = 0.0
    
    func calculate(){
        ///This is the function that assigns the numbers to the variables that are used after the button is pressed. It then connects the code to were the calculations are done. These files are called SphereParameters and Cube Parameters.
        if let r = Double(radius) {
            var sphereParameters = SphereParameters()
            var cubeParameters = CubeParameters()
            area_of_sphere = sphereParameters.area_of_sphere(radius: r)
            area_of_cube = cubeParameters.area_of_cube(radius: r)
            volume_of_cube = cubeParameters.volume_of_cube(radius: r)
            volume_of_sphere = sphereParameters.volume_of_sphere(radius: r)
        }
    }
    
    ///This Creates the GUI window where the user can input a radius, then they will click calculate butoon and then the user will see the results of the volume of the cube, volume of the sphere, surface area of a cube and area of sphere.
    var body: some View {
        VStack {
            Text("Enter the Radius:")
            TextField("Radius", text: $radius)
                
            VStack {
                Text("Sphere Area: \(String(format: "%.2f", area_of_sphere))")
                Text("Sphere Volume: \(String(format: "%.2f", volume_of_sphere))")
                Text("Cube Area: \(String(format: "%.2f", area_of_cube))")
                Text("Cube Volume: \(String(format: "%.2f", volume_of_cube))")
                Button("Calculate", action: self.calculate)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
