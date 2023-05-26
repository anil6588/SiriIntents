//
//  WishlistIntent.swift
//  SiriIntent
//
//  Created by Yathish Murthy S on 25/05/23.
//

import Foundation
import AppIntents

struct WishlistIntent: AppIntent {

    static var title: LocalizedStringResource = "Create Wishlist"

    static var description: IntentDescription? = "Creates a wishlista and adds the given product to it."

    func perform() async throws -> some IntentResult & ProvidesDialog {
        // TODO: Perform task to search and add the product to wishllist
        // await AddItemToWishlist()
        return .result(
            dialog: "Item added to wishlist."
        )
    }
}

