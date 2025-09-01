import SwiftUI

struct CryptoListView: View {
    @EnvironmentObject var viewModel: CryptoViewModel
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                if viewModel.cryptoList.isEmpty {
                    ProgressView()
                        .padding(.top, .extraLargeSpace)
                } else {
                    VStack(spacing: .mediumSpace) {
                        ForEach(viewModel.cryptos.sorted(by: { $0.marketCapRank ?? 0 < $1.marketCapRank ?? 0 })) { crypto in
                            NavigationLink(destination: CryptoDetailView(crypto: crypto)) {
                                CryptoCardView(crypto: crypto)
                            }
                        }
                        
                        if viewModel.offset == viewModel.cryptoList.count {
                            ProgressView()
                                .padding(.vertical)
                                .onAppear {
                                    viewModel.fetchCryptos()
                                }
                        } else {
                            GeometryReader { reader in
                                let minY = reader.frame(in: .global).minY
                                let height = UIScreen.main.bounds.height / .screenHeight
                                
                                if !viewModel.cryptoList.isEmpty && minY < height {
                                    DispatchQueue.main.async {
                                        viewModel.offset = viewModel.cryptoList.count
                                    }
                                }
                                
                                return Color.clear
                            }
                            .frame(width: .screenWidth, height: .screenWidth)
                        }
                    }
                    .padding(.vertical)
                }
            }
        }
        .onAppear {
            if viewModel.cryptoList.isEmpty {
                viewModel.fetchCryptos()
            }
        }
    }
}
