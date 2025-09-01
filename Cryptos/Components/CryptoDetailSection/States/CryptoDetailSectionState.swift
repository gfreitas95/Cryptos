import SwiftUI

struct CryptoDetailSectionState {
    let currentPrice: Double
    let marketCap: Double
    let totalVolume: Double
    let high: Double
    let low: Double
    let priceChange: Double
    let marketCapChange: Double
    
    init(currentPrice: Double,
         marketCap: Double,
         totalVolume: Double,
         high: Double,
         low: Double,
         priceChange: Double,
         marketCapChange: Double
    ) {
        self.currentPrice = currentPrice
        self.marketCap = marketCap
        self.totalVolume = totalVolume
        self.high = high
        self.low = low
        self.priceChange = priceChange
        self.marketCapChange = marketCapChange
    }
}
