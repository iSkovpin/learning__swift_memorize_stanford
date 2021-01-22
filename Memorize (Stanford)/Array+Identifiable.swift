//
//  Array+Identifiable.swift
//  Memorize (Stanford)
//
//  Created by Иван С on 22.01.2021.
//

import Foundation

extension Array where Element: Identifiable {
    func firstIndex(matching element: Element) -> Int? {
        for index in 0..<self.count {
            if self[index].id == element.id {
                return index
            }
        }
        return nil
    }
}
