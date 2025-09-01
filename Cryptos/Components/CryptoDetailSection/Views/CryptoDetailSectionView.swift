import SwiftUI

struct CryptoDetailSectionView: View {
    var state: CryptoDetailSectionState
    
    var body: some View {
        VStack(alignment: .center, spacing: .smallSpace) {
            Text("Current Price: \(state.currentPrice)")
                .font(.system(size: .fontSizeLarge, weight: .medium, design: .monospaced))
            
            Text("Market Cap: \(state.marketCap)")
                .font(.system(size: .fontSizeLarge, weight: .medium, design: .monospaced))
            
            Text("Total Volume: \(state.totalVolume)")
                .font(.system(size: .fontSizeLarge, weight: .medium, design: .monospaced))
            
            Text("High: \(state.high)")
                .font(.system(size: .fontSizeLarge, weight: .medium, design: .monospaced))
            
            Text("Low: \(state.low)")
                .font(.system(size: .fontSizeLarge, weight: .medium, design: .monospaced))
            
            Text("Price Change: \(state.priceChange)")
                .font(.system(size: .fontSizeLarge, weight: .medium, design: .monospaced))
            
            Text("Market Cap Change: \(state.marketCapChange)")
                .font(.system(size: .fontSizeLarge, weight: .medium, design: .monospaced))
        }
    }
}
