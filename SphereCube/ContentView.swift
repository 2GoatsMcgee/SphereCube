//
//  ContentView.swift
//  SphereCube
//
//  Created by IIT PHYS 440 on 1/19/23.
//

import SwiftUI

struct ContentView: View {
    @State var radius: String = ""
    @State var area_of_sphere = 0.0
    @State var volume_of_sphere = 0.0
    @State var area_of_cube = 0.0
    @State var volume_of_cube = 0.0
    
    func calculate(){
        if let r = Double(radius) {
            var sphereParameters = SphereParameters()
            var cubeParameters = CubeParameters()
            area_of_sphere = sphereParameters.area_of_sphere(radius: r)
            area_of_cube = cubeParameters.area_of_cube(radius: r)
            volume_of_cube = cubeParameters.volume_of_cube(radius: r)
            volume_of_sphere = sphereParameters.volume_of_sphere(radius: r)
        }
    }
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
