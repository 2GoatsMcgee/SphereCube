//
//  SphereCubeTests.swift
//  SphereCubeTests
//
//  Created by IIT PHYS 440 on 1/19/23.
//

import XCTest

final class SphereCubeTests: XCTestCase {

    ///Tests the calculations for the area of the cube using the test radius of 1.0 and 6.0
    func Test_Cube_Area() throws {
        var cubeParameters = CubeParameters()
        var areacube = cubeParameters.area_of_cube(radius: 1.0)
        var expected_value = 1.0
        XCTAssertEqual(areacube, expected_value, accuracy: 1e-14)
        
        areacube = cubeParameters.area_of_cube(radius: 6.0)
        expected_value = 216.0
        XCTAssertEqual(areacube, expected_value, accuracy: 1e-14)
        
    }
    
    ///Tests the calculations for the volume of the cube using the test radius of 1.0 and 6.0
    func Test_Cube_Volume() throws {
        var cubeParameters = CubeParameters()
        var volumecube = cubeParameters.volume_of_cube(radius: 1.0)
        var expected_value = 6.0
        XCTAssertEqual(volumecube, expected_value, accuracy: 1e-14)
        
        volumecube = cubeParameters.volume_of_cube(radius: 6.0)
        expected_value = 216.0
        XCTAssertEqual(volumecube, expected_value, accuracy: 1e-14)
        
    }
    
    ///Tests the calculations for the area of the sphere using the test radius of 1.0 and 6.0
    func Test_Sphere_Area() throws {
        var sphereParameters = SphereParameters()
        var areasphere = sphereParameters.area_of_sphere(radius: 1.0)
        var expected_value = 4.0 * Double.pi
        XCTAssertEqual(areasphere, expected_value, accuracy: 1e-14)
        
        areasphere = sphereParameters.area_of_sphere(radius: 6.0)
        expected_value = 144 * Double.pi
        XCTAssertEqual(areasphere, expected_value, accuracy: 1e-14)
        
    }
    
    ///Tests the calculations for the volume of the sphere using the test radius of 1.0 and 6.0
    func Test_Sphere_Volume() throws {
        var sphereParameters = SphereParameters()
        var volumesphere = sphereParameters.volume_of_sphere(radius: 1.0)
        var expected_value = (4.0 / 3.0) * Double.pi
        XCTAssertEqual(volumesphere, expected_value, accuracy: 1e-14)
        
        volumesphere = sphereParameters.volume_of_sphere(radius: 6.0)
        expected_value = (4.0 / 3.0) * Double.pi * 216
        XCTAssertEqual(volumesphere, expected_value, accuracy: 1e-14)
        
    }
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
