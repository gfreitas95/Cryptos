import SwiftUI

class CryptoManager {
    
    static let shared = CryptoManager()
    
    init() {}
    
    func makeRequestWith<T: Decodable>(url: String, model: T.Type, completion: @escaping(Result<T, CryptoErrors>) -> Void) {
        guard let url = URL(string: url) else {
            completion(.failure(.invalidUrl))
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else {
                if let error = error {
                    completion(.failure(.invalidData))
                    print(CryptoErrors.defaultError.rawValue + error.localizedDescription)
                }
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                
                let response = try decoder.decode(T.self, from: data)
                completion(.success(response))
            } catch {
                completion(.failure(.invalidResponse))
            }
        }.resume()
    }
}
