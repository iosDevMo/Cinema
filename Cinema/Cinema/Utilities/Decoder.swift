//
//  Decoder.swift
//  Cinema
//
//  Created by mohamdan on 10/06/2023.
//

import Foundation

func decode<T:Codable>(file: String) -> T {
    guard let url = Bundle.main.url(forResource: file, withExtension: nil)else{
        fatalError("Fail to locate the file")
    }
    guard let data = try? Data(contentsOf: url)else{
        fatalError("Failed to load the datd")
    }
            let decoder = JSONDecoder()
    guard let decodedData = try? decoder.decode(T.self, from: data)else{
        fatalError("Fail to decode the data")
        }
    return decodedData
}
