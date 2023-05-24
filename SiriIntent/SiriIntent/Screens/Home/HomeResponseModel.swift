//
//  HomeModel.swift
//  SiriIntent
//
//  Created by Anil Kothari on 24/05/23.
//

import Foundation

// MARK: - HomeResponseModel
struct HomeResponseModel: Decodable {
    let itemStacks: [ItemStack]?
}


// MARK: - ItemStack
struct ItemStack: Decodable {
    let name: String?
    let imageInfo: ImageInfo?
    let priceInfo: PriceInfo?
}
 
// MARK: - Flag
struct Flag: Decodable {
    let typename: FlagTypename?
    let key, text: String?
    let type: FlagType?
    let id: String?

    enum CodingKeys: String, CodingKey {
        case typename
        case key, text, type, id
    }
}

enum FlagType: String, Decodable {
    case icon = "ICON"
    case label = "LABEL"
}

enum FlagTypename: String, Decodable {
    case baseBadge = "BaseBadge"
}

// MARK: - Tag
struct Tag: Decodable {
    let typename: FlagTypename?
    let key: Key?
    let text: Text?
    let type: FlagType?

    enum CodingKeys: String, CodingKey {
        case typename
        case key, text, type
    }
}

enum Key: String, Decodable {
    case delivery = "DELIVERY"
    case oneDayShipping = "ONE_DAY_SHIPPING"
    case pickup = "PICKUP"
    case saveWithWPlus = "SAVE_WITH_W_PLUS"
    case threePlusDayShipping = "THREE_PLUS_DAY_SHIPPING"
    case twoDayShipping = "TWO_DAY_SHIPPING"
}

enum Text: String, Decodable {
    case delivery = "Delivery"
    case pickup = "Pickup"
    case saveWith = "Save with"
    case the1DayShipping = "1-day shipping"
    case the2DayShipping = "2-day shipping"
    case the3DayShipping = "3+ day shipping"
}


enum ClassTypeEnum: String, Decodable {
    case regular = "REGULAR"
    case sponsoredVideoAd = "SponsoredVideoAd"
    case variant = "VARIANT"
}

// MARK: - EventAttributes
struct EventAttributes: Decodable {
    let priceFlip, specialBuy: Bool?
}

enum FulfillmentSpeed: String, Decodable {
    case the2Days = "2 days"
    case today = "TODAY"
}

enum FulfillmentTitle: String, Decodable {
    case titleShipToHomeNotAvailable = "title_shipToHome_not_available"
    case titleStoreNotAvailable = "title_store_not_available"
}

enum FulfillmentType: String, Decodable {
    case fc = "FC"
    case marketplace = "MARKETPLACE"
    case store = "STORE"
}

// MARK: - GroupMetaData
struct GroupMetaData: Decodable {
    let numberOfComponents: Int?
}

// MARK: - ImageInfo
struct ImageInfo: Decodable {
    let thumbnailUrl: String?

    enum CodingKeys: String, CodingKey {
        case thumbnailUrl
    }
}
 

// MARK: - PriceInfo
struct PriceInfo: Decodable {
    let priceRange: PriceRange?
    let currentPrice: TPrice?
    let unitPrice, listPrice: TPrice?
    let subscriptionDualPrice: Double?
    let subscriptionPercentage: Int?
}

// MARK: - TPrice
struct TPrice: Decodable {
    let price: Double?
    let priceString: String?
    let variantPriceString: String?
    let priceDisplay: String?
}
 

// MARK: - PriceRange
struct PriceRange: Decodable {
    let minPrice, maxPrice: Double?
    let priceString: String?
}

 
