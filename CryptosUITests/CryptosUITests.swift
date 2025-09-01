import XCTest

final class CryptosUITests: XCTestCase {
    
    override class func setUp() {
        let application = XCUIApplication()
        application.launch()
    }
    
    func testTappingCryptoCardView() throws {
        let application = XCUIApplication()
        application.activate()
        application/*@START_MENU_TOKEN@*/.buttons["Bitcoin, 0.000000, 0.000000"]/*[[".buttons.containing(.staticText, identifier: \"Bitcoin\").firstMatch",".otherElements.buttons[\"Bitcoin, 0.000000, 0.000000\"]",".buttons[\"Bitcoin, 0.000000, 0.000000\"]"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let backButton = application/*@START_MENU_TOKEN@*/.buttons["Back"]/*[[".navigationBars.buttons[\"Back\"]",".buttons.firstMatch",".buttons[\"Back\"]"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        backButton.tap()
        application/*@START_MENU_TOKEN@*/.buttons["Tether, 0.000000, 0.000000"]/*[[".buttons.containing(.staticText, identifier: \"Tether\").firstMatch",".otherElements.buttons[\"Tether, 0.000000, 0.000000\"]",".buttons[\"Tether, 0.000000, 0.000000\"]"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.swipeUp()
        application/*@START_MENU_TOKEN@*/.buttons["Solana, 0.000000, 0.000000"]/*[[".buttons.containing(.staticText, identifier: \"Solana\").firstMatch",".otherElements.buttons[\"Solana, 0.000000, 0.000000\"]",".buttons[\"Solana, 0.000000, 0.000000\"]"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        backButton.tap()
        application/*@START_MENU_TOKEN@*/.staticTexts["Lido Staked Ether"]/*[[".buttons.staticTexts[\"Lido Staked Ether\"]",".staticTexts[\"Lido Staked Ether\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.swipeUp()
        application/*@START_MENU_TOKEN@*/.buttons["Dogecoin, 0.000000, 0.000000"]/*[[".buttons.containing(.staticText, identifier: \"Dogecoin\").firstMatch",".otherElements.buttons[\"Dogecoin, 0.000000, 0.000000\"]",".buttons[\"Dogecoin, 0.000000, 0.000000\"]"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        backButton.tap()
    }
    
    func testScrollingCryptoList() throws {
        let application = XCUIApplication()
        application.activate()
        application.buttons["XRP, 0.000000, 0.000000"].swipeUp()
        application.buttons["Solana, 0.000000, 0.000000"].swipeUp()
        application/*@START_MENU_TOKEN@*/.buttons["Dogecoin, 0.000000, 0.000000"]/*[[".buttons.containing(.staticText, identifier: \"Dogecoin\").firstMatch",".otherElements.buttons[\"Dogecoin, 0.000000, 0.000000\"]",".buttons[\"Dogecoin, 0.000000, 0.000000\"]"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.swipeDown()
    }
    
    func testPullToRefresh() throws {
        let application = XCUIApplication()
        application.activate()
        application.buttons["XRP, 0.000000, 0.000000"].swipeUp()
        application.buttons["Solana, 0.000000, 0.000000"].swipeUp()
        application/*@START_MENU_TOKEN@*/.buttons["Dogecoin, 0.000000, 0.000000"]/*[[".buttons.containing(.staticText, identifier: \"Dogecoin\").firstMatch",".otherElements.buttons[\"Dogecoin, 0.000000, 0.000000\"]",".buttons[\"Dogecoin, 0.000000, 0.000000\"]"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.press(forDuration: 0.7, thenDragTo: application.buttons["Solana, 0.000000, 0.000000"], withVelocity: .default, thenHoldForDuration: .zero)
    }
    
    func testShowingAlertMessage() throws {
        let application = XCUIApplication()
        application.open(URL(string: "https://api.coingecko.com/api/v3/coins/markets?vs_currency=eur&order=market_cap_desc&per_page=-1&page=1&sparkline=false")!)
    }
    
    func testThemeToggle() throws {
        let application = XCUIApplication()
        application.activate()
        application/*@START_MENU_TOKEN@*/.buttons["menucard"]/*[[".otherElements.buttons[\"menucard\"]",".buttons[\"menucard\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        application/*@START_MENU_TOKEN@*/.buttons["Dark"]/*[[".otherElements.buttons[\"Dark\"]",".buttons[\"Dark\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        application/*@START_MENU_TOKEN@*/.buttons["Light"]/*[[".otherElements.buttons[\"Light\"]",".buttons[\"Light\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        application/*@START_MENU_TOKEN@*/.buttons["Default"]/*[[".otherElements.buttons[\"Default\"]",".buttons[\"Default\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        application/*@START_MENU_TOKEN@*/.buttons["arrowshape.backward"]/*[[".otherElements.buttons[\"arrowshape.backward\"]",".buttons[\"arrowshape.backward\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    }
}
