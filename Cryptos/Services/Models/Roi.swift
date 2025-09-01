import SwiftUI

struct Roi: Codable, Identifiable, Hashable {
    let id = UUID()
    let times: Double?
    let currency: String?
    let percentage: Double?
    
    enum CodingKeys: String, CodingKey {
        case times = "times"
        case currency = "currency"
        case percentage = "percentage"
    }
    
    static func mock() -> Roi {
        return .init(
            times: 52.86465455722591,
            currency: "btc",
            percentage: 5286.465455722591
        )
    }
}
