//
//  MovieModel.swift
//  Cinema
//
//  Created by mohamdan on 10/06/2023.
//

import Foundation
struct MovieModel: Codable, Identifiable {
    var id: String
    var name : String
    var headline : String
    var description : String
    var link : String
    var image : String
    var gallery : [String]
    var actor : [String]
    
}
