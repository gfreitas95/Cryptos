import XCTest
@testable import Cryptos

final class CryptoViewModelTests: XCTestCase {
    
    let viewModel = CryptoViewModel()
    
    func testViewModelInit() {
        XCTAssertNotNil(viewModel)
    }
    
    func testIfOffsetIsZero() {
        let result = viewModel.offset
        XCTAssertEqual(result, 0)
    }
    
    func testIfIsLoading() {
        let result = viewModel.isLoading
        XCTAssertEqual(result, false)
    }
    
    func testIfIsShowingAlert() {
        let result = viewModel.isShowingAlert
        XCTAssertEqual(result, false)
    }
    
    func testIfCryptoListIsClear() {
        let result = viewModel.cryptoList.isEmpty
        XCTAssertEqual(result, true)
    }
    
    func testIfSettingsButtonIsShowing() {
        let result = viewModel.settingsButton
        XCTAssertEqual(result, "menucard")
    }
}
