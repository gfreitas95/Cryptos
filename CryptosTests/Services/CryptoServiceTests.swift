import XCTest
@testable import Cryptos

final class CryptoServiceTests: XCTestCase {
    
    private let baseUrl: String = .cryptoUrl(limit: 9)
    
    func testGetListOfCryptos() {
        var responseData: Data?
        var responseError: Error?
        
        guard let url = URL(string: baseUrl) else { return }
        let expectation = self.expectation(description: "GET \(url)")
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            responseData = data
            responseError = error
            expectation.fulfill()
        }
        .resume()
        
        waitForExpectations(timeout: 5, handler: nil)
        
        XCTAssertNil(responseError)
        XCTAssertNotNil(responseData)
        
        if let data = responseData {
            do {
                if let response = try JSONSerialization.jsonObject(with: data, options: []) as? [[String: Any]] {
                    XCTAssertTrue(response.count > 0)
                } else {
                    XCTFail("\n Response is not a valid JSON array \n")
                }
            } catch {
                XCTFail("\n Failed to parse JSON: \(error)\n")
            }
        }
    }
}
