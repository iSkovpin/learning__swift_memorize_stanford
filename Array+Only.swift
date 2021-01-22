//
//  Array+Only.swift
//  Memorize (Stanford)
//
//  Created by Иван С on 22.01.2021.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
