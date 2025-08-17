//
//  MovieService.swift
//  MoviesApp
//
//  Created by oliwia on 07/08/2025.
//

import Foundation

class MovieService {
    
    private let baseURL = "https://api.themoviedb.org/3"
    private let apiKey = APIKey.tmdb

    func fetchPopularMovies() async throws -> [Movie] {
        guard let url = URL(string: "\(baseURL)/discover/movie?api_key=\(apiKey)") else {
            throw URLError(.badURL)
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw URLError(.badServerResponse)
        }
    

        let decodedResponse = try JSONDecoder().decode(MoviesResponse.self, from: data)
        return decodedResponse.results
        
    }
}
