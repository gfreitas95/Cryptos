import SwiftUI

struct CryptoImageView: View {
    var state: CryptoImageState
    
    var body: some View {
        AsyncImage(url: URL(string: state.imageUrl)) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
        } placeholder: {
            ProgressView()
        }
        .frame(width: .imageSize, height: .imageSize)
    }
}
