//
//  BoardSpec.swift
//  Conway
//
//  Created by Nate West on 2/22/15.
//  Copyright (c) 2015 Nate West. All rights reserved.
//

import Quick
import Nimble

class BoardSpec: QuickSpec {
    override func spec() {
        describe("Board") {
            it("keeps track of Cells") {
                let cell1 = Cell(location:Coordinate(x: 0, y: 0), state:.Off)
                let cell2 = Cell(location:Coordinate(x: 0, y: 1), state:.On)
                let cell3 = Cell(location:Coordinate(x: 0, y: 2), state:.On)
                let board = [cell1, cell2]
                expect(board.contains(cell1)).to(beTrue())
                expect(board.contains(cell2)).to(beTrue())
                expect(board.contains(cell3)).to(beFalse())
            }
        }
    }
}
