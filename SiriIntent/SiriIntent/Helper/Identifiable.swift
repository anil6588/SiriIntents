//
//  Identifiable.swift
//  SiriIntent
//
//  Created by Anil Kothari on 24/05/23.
//

import Foundation

protocol Identifiable {
    static var identifier: String { get }
}

extension Identifiable {
    static var identifier: String { return String(describing: self) }
}
