//
//  BundleDecoderExtention.swift
//  Ecommerce
//
//  Created by Web & Media Team on 2/4/23.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        
        // 1. Locate the json file
        guard let url = self.url(forResource: file, withExtension: nil) else{
            fatalError("Failed to load \(file) in bundle")
        }
        
        // 2. Create a property for the data
        guard let data = try? Data(contentsOf: url) else{
            fatalError("Failed to load \(file) from bundle")
        }
        
        // 3. Create a decoder
        let jsonDecoder = JSONDecoder()
        
        // 4. Create a property for the decoded data
        guard let decodedData = try? jsonDecoder.decode(T.self, from: data) else{
            fatalError("Failed to decode \(file) from bundle")
        }

        // 5. Return the ready-to-use data
        return decodedData
    }
}
