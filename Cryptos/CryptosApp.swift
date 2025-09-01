import SwiftUI

@main
struct CryptosApp: App {
    var body: some Scene {
        WindowGroup {
            CryptoThemeToggle() {
                CryptoContentView()
            }
        }
    }
}
