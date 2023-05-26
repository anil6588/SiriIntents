//
//  SiriIntentShortcuts.swift
//  SiriIntent
//
//  Created by Yathish Murthy S on 25/05/23.
//

import Foundation
import AppIntents

struct SiriIntentShortcuts: AppShortcutsProvider {
    static var appShortcuts: [AppShortcut] { 
        AppShortcut(
            intent: WishlistIntent(),
            phrases: [
                "Add tyre to wishlist in \(.applicationName)",
                "Wishlist tyre in \(.applicationName)",
                "Create wishlist for tyre in \(.applicationName)"
            ]
        )
    }
}
