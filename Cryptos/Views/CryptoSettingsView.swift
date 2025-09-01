import SwiftUI

struct CryptoSettingsView: View {
    @AppStorage(.aplicationTheme) private var aplicationTheme: AplicationTheme = .systemDefault
    
    var body: some View {
        NavigationStack {
            List {
                Picker("", selection: $aplicationTheme) {
                    ForEach(AplicationTheme.allCases, id: \.rawValue) { theme in
                        Text(theme.rawValue).tag(theme)
                    }
                }
                .pickerStyle(.inline)
            }
            .navigationTitle("Theme Settings")
        }
    }
}
