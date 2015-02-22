//
//  Cell.swift
//  Conway
//
//  Created by Nate West on 2/20/15.
//  Copyright (c) 2015 Nate West. All rights reserved.
//

import Foundation

enum State {
    case On
    case Off
}

struct Cell {
    let location: Coordinate
    let state: State
}
