//
//  Movie.swift
//  MoviesApp
//
//  Created by oliwia on 07/08/2025.
//


import Foundation

struct MoviesResponse: Codable {
    let page: Int
    let results: [Movie]
    let totalPages: Int
    let totalResults: Int

    enum CodingKeys: String, CodingKey {
        case page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

struct Movie: Codable, Identifiable {
    let id: Int
    let title: String
    let releaseDate: String?
    let posterPath: String?
    let voteAverage: Double
    let genreIds: [Int]?
    let adult: Bool
    let backdropPath: String?
    let originalLanguage: String? 
    let originalTitle: String?
    let overview: String
    let popularity: Double
    let video: Bool
    let voteCount: Int

    enum CodingKeys: String, CodingKey {
        case id, title, genreIds, adult, originalLanguage, originalTitle, overview, popularity, video
        case releaseDate = "release_date"
        case posterPath = "poster_path"
        case voteAverage = "vote_average"
        case backdropPath = "backdrop_path"
        case voteCount = "vote_count"
    }
}
