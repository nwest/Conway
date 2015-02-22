//
//  CellSpec.swift
//  Conway
//
//  Created by Nate West on 2/22/15.
//  Copyright (c) 2015 Nate West. All rights reserved.
//

import Quick
import Nimble

class CellSpec: QuickSpec {
    override func spec() {
        describe("Cell") {
            it ("keeps track of a coordinate and state") {
                let coordinate: Coordinate = Coordinate(x:1, y:2)
                let cell: Cell = Cell(location:coordinate, state:.Off)
                expect(cell.location).to(equal(coordinate))
                expect(cell.state == .Off).to(beTrue())
            }
        }
    }
}