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
            var cell1 :Cell!
            var cell1b :Cell!
            var cell2 :Cell!
            var cell3 :Cell!

            beforeEach {
                cell1 = Cell(location:Coordinate(x: 0, y: 0), state:.Off)
                cell1b = Cell(location:Coordinate(x: 0, y: 0), state:.On)
                cell2 = Cell(location:Coordinate(x: 0, y: 1), state:.On)
                cell3 = Cell(location:Coordinate(x: 0, y: 2), state:.On)
            }

            it("keeps track of Cells") {
                let board = Board(cells: [cell1, cell2])
                expect(board.cells.contains(cell1)).to(beTrue())
                expect(board.cells.contains(cell2)).to(beTrue())
                expect(board.cells.contains(cell3)).to(beFalse())
            }

            describe("insert") {
                it("swaps out the old cell") {
                    let board = Board(cells: [cell1])
                    let newBoard = board.addCell(cell1b)
                    let (cell, index) = newBoard.cellAtLocation(cell1b.location)
                    expect(cell!.state == .On).to(beTrue())
                }
            }

            describe("toggle") {
                it ("toggles the cell at a location") {
                    let location = Coordinate(x: 2, y: 2)
                    let board = generateBoard(5, 5)
                    let newBoard = board.toggle(location)
                    let (cell, index) = newBoard.cellAtLocation(location)
                    expect(cell!.state == .On).to(beTrue())
                }
            }

            describe("generateBoard") {
                it ("creates a Board with a width and height") {
                    let board = generateBoard(5, 5)
                    expect(board.cells.count).to(equal(25))
                }
            }
        }
    }
}
