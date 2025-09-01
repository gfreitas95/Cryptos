import SwiftUI

enum AplicationTheme: String, CaseIterable {
    case dark = "Dark"
    case light = "Light"
    case systemDefault = "Default"
    
    var colorScheme: ColorScheme? {
        switch self {
        case .dark: return .dark
        case .light: return .light
        case .systemDefault: return nil
        }
    }
}

struct CryptoThemeToggle<Content: View>: View {
    @ViewBuilder var content: Content
    @AppStorage(.aplicationTheme) private var aplicationTheme: AplicationTheme = .systemDefault
    
    var body: some View {
        content.preferredColorScheme(aplicationTheme.colorScheme)
    }
}
