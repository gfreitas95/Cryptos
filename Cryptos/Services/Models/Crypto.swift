import SwiftUI

struct Crypto: Codable, Identifiable, Hashable {
    let id: String?
    let symbol: String?
    let name: String?
    let image: String?
    let currentPrice: Double?
    let marketCap: Double?
    let marketCapRank: Double?
    let fullyDilutedValuation: Double?
    let totalVolume: Double?
    let high: Double?
    let low: Double?
    let priceChange: Double?
    let priceChangePercentage: Double?
    let marketCapChange: Double?
    let marketCapChangePercentage: Double?
    let circulatingSupply: Double?
    let totalSupply: Double?
    let maxSupply: Double?
    let ath: Double?
    let athChangePercentage: Double?
    let athDate: String?
    let atl: Double?
    let atlChangePercentage: Double?
    let atlDate: String?
    let roi: Roi?
    let lastUpdated: String?
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case symbol = "symbol"
        case name = "name"
        case image = "image"
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case marketCapRank = "market_cap_rank"
        case fullyDilutedValuation = "fully_diluted_valuation"
        case totalVolume = "total_volume"
        case high = "high_24h"
        case low = "low_24h"
        case priceChange = "price_change_24h"
        case priceChangePercentage = "price_change_percentage_24h"
        case marketCapChange = "market_cap_change_24h"
        case marketCapChangePercentage = "market_cap_change_percentage_24h"
        case circulatingSupply = "circulating_supply"
        case totalSupply = "total_supply"
        case maxSupply = "max_supply"
        case ath = "ath"
        case athChangePercentage = "ath_change_percentage"
        case athDate = "ath_date"
        case atl = "atl"
        case atlChangePercentage = "atl_change_percentage"
        case atlDate = "atl_date"
        case roi = "roi"
        case lastUpdated = "last_updated"
    }
    
    static func mock() -> Crypto {
        return .init(
            id: "ethereum",
            symbol: "eth",
            name: "Ethereum",
            image: "https://coin-images.coingecko.com/coins/images/279/large/ethereum.png?1696501628",
            currentPrice: 3813.26,
            marketCap: 460022971845,
            marketCapRank: 2,
            fullyDilutedValuation: 460022971845,
            totalVolume: 42235104001,
            high: 3988.26,
            low: 3726.63,
            priceChange: -78.5338157240617,
            priceChangePercentage: -2.01793,
            marketCapChange: -9923529082.133484,
            marketCapChangePercentage: -2.11163,
            circulatingSupply: 120707007.3276469,
            totalSupply: 120707007.3276469,
            maxSupply: 0,
            ath: 4229.76,
            athChangePercentage: -10.02107,
            athDate: "2025-08-24T18:41:03.538Z",
            atl: 0.381455,
            atlChangePercentage: 997630.29339,
            atlDate: "2015-10-20T00:00:00.000Z",
            roi: .mock(),
            lastUpdated: "2025-08-26T10:57:51.938Z"
        )
    }
}
