import SwiftUI

struct CryptoContentView: View {
    @StateObject var viewModel = CryptoViewModel()
    @State var isSettingsButtonTouched: Bool = false
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        VStack {
            HStack {
                Text(viewModel.viewTitle)
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundStyle(colorScheme == .dark ? .white : .black)
                
                Spacer()
                
                Button(action: {
                    withAnimation {
                        isSettingsButtonTouched.toggle()
                    }
                }) {
                    Image(systemName: viewModel.navBarButtonImage(isSettingsButtonTouched))
                        .font(.title)
                        .foregroundStyle(colorScheme == .dark ? .white : .black)
                }
            }
            .padding(.horizontal)
            .background(Color.white.opacity(.shadowOpacity).ignoresSafeArea(.all, edges: .top))
            
            if isSettingsButtonTouched {
                CryptoSettingsView()
                    .environmentObject(viewModel)
                    .transition(.blurReplace)
            } else {
                CryptoListView()
                    .environmentObject(viewModel)
                    .transition(.blurReplace)
            }
        }
        .cryptoAlert(message: viewModel.errorMessage, isPresented: $viewModel.isShowingAlert) {}
    }
}
