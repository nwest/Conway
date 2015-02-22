//
//  Cell.swift
//  Conway
//
//  Created by Nate West on 2/20/15.
//  Copyright (c) 2015 Nate West. All rights reserved.
//

import Foundation

public enum State {
    case On
    case Off

    func invert() -> State {
        switch self {
        case .On:
            return .Off
        case .Off:
            return .On
        }
    }
}

public struct Cell: Equatable {
    let location: Coordinate
    let state: State

    public func toggle() -> Cell {
        return Cell(location: location, state: state.invert())
    }
}

public func ==(lhs: Cell, rhs: Cell) -> Bool {
    return lhs.location == rhs.location
}
