import SwiftUI

enum CryptoErrors: String, Error {
    case invalidUrl = "Unable to complete your request. Please try again"
    case invalidData = "The data received from the server was invalid. Please try again"
    case invalidResponse = "Invalid response from the server. Please try again"
    case defaultError = "error: "
}
