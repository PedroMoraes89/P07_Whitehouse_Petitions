//
//  Petition.swift
//  P07 - Whitehouse Petitions
//
//  Created by user220265 on 11/4/22.
//

import Foundation

struct Petition: Codable {
    var title: String
    var body: String
    var signatureCount: Int
}
