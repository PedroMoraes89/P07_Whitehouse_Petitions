//
//  ViewModel.swift
//  P07 - Whitehouse Petitions
//
//  Created by user220265 on 11/7/22.
//

import Foundation
import Alamofire

class ViewModel {
    
    var petitions: Petitions = Petitions(result: [])
    
    func request(completion: @escaping(Bool, Error?) -> Void) {
        let url = "https://www.hackingwithswift.com/samples/petitions-1.json"
        
        AF.request(url).responseJSON { responde in
            if let data = responde.data {
                do {
                    let result: Petitions = try JSONDecoder().decode(Petitions.self, from: data)
                    self.petitions = result
                    completion(true, nil)
                } catch {
                    completion(false, error)
                }
            }
        }
    }
}
