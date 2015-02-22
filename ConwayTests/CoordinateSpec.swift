//
//  CoordinateSpec.swift
//  Conway
//
//  Created by Nate West on 2/22/15.
//  Copyright (c) 2015 Nate West. All rights reserved.
//

import Quick
import Nimble

class CoordinateSpec: QuickSpec {
    override func spec() {
        describe("Coordinate") {
            it ("keeps track of an x and a y") {
                let coordinate: Coordinate = Coordinate(x:1, y:2)
                expect(coordinate.x).to(equal(1))
                expect(coordinate.y).to(equal(2))
            }
        }
    }
}
