import SwiftUI

struct CryptoDetailView: View {
    var crypto: Crypto
    
    var body: some View {
        VStack {
            CryptoImageView(state: CryptoImageState(imageUrl: crypto.image ?? ""))
            
            Spacer().frame(height: .mediumSpace)
            
            Text(crypto.name?.capitalized ?? "")
                .font(.system(size: .fontSizeExtraLarge, weight: .bold, design: .monospaced))
            
            Spacer().frame(height: .mediumSpace)
            
            CryptoDetailSectionView(state: CryptoDetailSectionState(
                currentPrice: Double(crypto.currentPrice ?? 0),
                marketCap: Double(crypto.marketCap ?? 0),
                totalVolume: Double(crypto.totalVolume ?? 0),
                high: Double(crypto.high ?? 0),
                low: Double(crypto.low ?? 0),
                priceChange: Double(crypto.priceChange ?? 0),
                marketCapChange: Double(crypto.marketCapChange ?? 0)
            ))
            
            Spacer()
        }
    }
}
