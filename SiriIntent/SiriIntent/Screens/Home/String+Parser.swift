//
//  CakeParser.swift
//  FoodDeliveryLayoutLBTA
//
//  Created by Anil Kothari on 11/05/23.
//  Copyright © 2023 Anil Kothari. All rights reserved.
//

import Foundation


extension String {
    func load<T: Decodable>() -> T {
        let data: Data

        guard let file = Bundle.main.url(forResource: self, withExtension: ".json")
        else {
            fatalError("Couldn't find \(self) in main bundle.")
        }

        do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("Couldn't load \(self) from main bundle:\n\(error)")
        }

        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            fatalError("Couldn't parse \(self) as \(T.self):\n\(error)")
        }
    }
}
