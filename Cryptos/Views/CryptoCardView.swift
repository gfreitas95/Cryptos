import SwiftUI

struct CryptoCardView: View {
    var crypto: Crypto
    
    var body: some View {
        HStack(alignment: .top, spacing: .mediumSpace) {
            VStack(alignment: .leading, spacing: .smallSpace) {
                Text(crypto.name ?? "")
                    .font(.system(size: .fontSizeLarge, weight: .bold, design: .monospaced))
                    .foregroundColor(.primary)
                
                Text("\(crypto.priceChangePercentage ?? 0)")
                    .font(.system(size: .fontSizeLarge, weight: .bold, design: .monospaced))
                    .foregroundColor(.white)
                    .lineLimit(1)
                
                Label("\(crypto.currentPrice ?? 0)", systemImage: .chartLine)
                    .font(.system(size: .fontSizeMedium, weight: .bold, design: .monospaced))
                    .foregroundColor(.white)
                    .imageScale(.large)
            }
            .padding([.top, .leading, .bottom])
            
            Spacer()
            
            CryptoImageView(state: CryptoImageState(imageUrl: crypto.image ?? ""))
                .padding([.trailing, .top, .bottom])
        }
        .background(.gray)
        .shadow(color: .teal, radius: .shadowRadius, x: .shadowOffset, y: .shadowOffset)
        .padding(.horizontal)
    }
}
