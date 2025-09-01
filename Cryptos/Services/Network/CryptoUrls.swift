import SwiftUI

extension String {
    
    static func cryptoUrl(limit: Int) -> String {
        return "https://api.coingecko.com/api/v3/coins/markets?vs_currency=eur&order=market_cap_desc&per_page=\(limit)&page=1&sparkline=false"
    }
}
