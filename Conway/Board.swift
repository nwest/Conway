//
//  Board.swift
//  Conway
//
//  Created by Nate West on 2/22/15.
//  Copyright (c) 2015 Nate West. All rights reserved.
//

import Foundation

typealias Board = [Cell]

extension Array {
    func contains<T where T :Equatable>(obj: T) -> Bool {
        return self.filter({$0 as? T == obj}).count > 0
    }
}