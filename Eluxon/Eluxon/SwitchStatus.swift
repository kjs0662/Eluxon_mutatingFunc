//
//  SwitchStatus.swift
//  Eluxon
//
//  Created by 김진선 on 2017. 8. 24..
//  Copyright © 2017년 김진선. All rights reserved.
//

import Foundation

enum SwitchStatus: Togglable {
    case on, off
    
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
}
