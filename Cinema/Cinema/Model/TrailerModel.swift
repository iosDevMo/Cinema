//
//  TrailerModel.swift
//  Cinema
//
//  Created by mohamdan on 11/06/2023.
//

import Foundation
struct TrailerModel : Codable, Identifiable {
    var id : String
    var name : String
    var headline : String
    var thumbnail : String{
        return "thumb-\(id)"
    }
}
