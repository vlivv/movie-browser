//
//  API.swift
//  MoviesApp
//
//  Created by oliwia on 07/08/2025.
//

import Foundation

struct APIKey {
    static var tmdb: String {
        guard let filePath = Bundle.main.path(forResource: "Info", ofType: "plist"),
              let plist = NSDictionary(contentsOfFile: filePath),
              let value = plist.object(forKey: "TMDB_API_KEY") as? String else {
            fatalError("Cannot find key 'TMDB_API_KEY' in file Info.plist")
        }
        print("Key API has been sucessfully read.")
        return value
    }
}
