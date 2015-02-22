//
//  Coordinate.swift
//  Conway
//
//  Created by Nate West on 2/22/15.
//  Copyright (c) 2015 Nate West. All rights reserved.
//

import Foundation

public struct Coordinate: Equatable {
    let x:Int
    let y:Int
}

public func ==(lhs: Coordinate, rhs: Coordinate) -> Bool {
    return lhs.x == rhs.x && lhs.y == rhs.y
}
