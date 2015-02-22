//
//  Board.swift
//  Conway
//
//  Created by Nate West on 2/22/15.
//  Copyright (c) 2015 Nate West. All rights reserved.
//

import Foundation

public struct Board {
    public let cells: [Cell]

    public func addCell(cell: Cell) -> Board {
        var cells = self.cells

        if let existing = find(self.cells, cell) {
            cells.removeAtIndex(existing)
        }

        cells.insert(cell, atIndex: cells.count)
        return Board(cells: cells)
    }

    public func cellAtLocation(location: Coordinate) -> (Cell?, Int?) {
        for var index = 0; index < self.cells.count; ++index {
            let cell = self.cells[index]
            if (cell.location == location) {
                return (cell, index)
            }
        }
        return (nil, nil)
    }
}

func generateBoard(width:Int, height:Int) -> Board {
    var newCells: [Cell] = []
    for var x = 0; x < width; x++ {
        for var y = 0; y < height; y++ {
            let newCell = Cell(location: Coordinate(x: x, y: y), state: .Off)
            newCells.insert(newCell, atIndex: newCells.endIndex)
        }
    }
    return Board(cells: newCells)
}

extension Array {
    func contains<T where T :Equatable>(obj: T) -> Bool {
        return self.filter({$0 as? T == obj}).count > 0
    }
}