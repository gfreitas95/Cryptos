import SwiftUI
import Combine

final class CryptoViewModel: ObservableObject {
    var errorMessage = ""
    let viewTitle = "888 Holdings"
    let settingsButton = "menucard"
    let homeButton = "arrowshape.backward"
    
    @Published var offset = 0
    @Published var isLoading = false
    @Published var isShowingAlert = false
    @Published var cryptoList = [Crypto]()
    @Published var cryptos = [Crypto]()
    
    func navBarButtonImage(_ isPressed: Bool) -> String {
        return isPressed ? homeButton : settingsButton
    }
    
    private func requestFailureHandler(_ error: CryptoErrors) {
        DispatchQueue.main.async {
            self.isLoading = false
            self.isShowingAlert = true
            self.errorMessage = error.rawValue
        }
        print(CryptoErrors.defaultError.rawValue + error.rawValue)
    }
    
    func filtered(crypto: [Crypto]) {
        let uniqueValues = crypto.filter { value in
            !self.cryptos.contains(where: { $0.name == value.name })
        }
        
        DispatchQueue.main.async {
            self.cryptos.append(contentsOf: uniqueValues)
            self.isLoading = false
        }
    }
    
    func fetchCryptos() {
        isLoading = true
        let limit = cryptoList.isEmpty ? 9 : offset
        
        CryptoManager.shared.makeRequestWith(url: .cryptoUrl(limit: limit), model: [Crypto].self) { [weak self] results in
            guard let self = self else { return }
            
            switch results {
            case .success(let crypto):
                DispatchQueue.main.async {
                    self.cryptoList.append(contentsOf: crypto)
                    self.filtered(crypto: self.cryptoList)
                    self.isLoading = false
                }
                
            case .failure(let error):
                self.requestFailureHandler(error)
            }
        }
    }
}
