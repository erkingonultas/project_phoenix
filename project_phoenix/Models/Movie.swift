//
//  Movie.swift
//  project_phoenix
//
//  Created by Erkin Gönültaş on 1.08.2023.
//

import Foundation

struct TrendingMovieResponse: Codable {
    let results: [Movie]
}

struct Movie: Codable {
    let imdbID: String
    let `Type`: String
    let Title: String
    let Images: [String]
    let Plot: String
    let imdbVotes: String
    let Released: String
    let imdbRating: String
}

/*
 {
 Actors = "Sam Worthington, Zoe Saldana, Sigourney Weaver, Stephen Lang";
 Awards = "Won 3 Oscars. Another 80 wins & 121 nominations.";
 Country = "USA, UK";
 Director = "James Cameron";
 Genre = "Action, Adventure, Fantasy";
 Images =         (
     "https://images-na.ssl-images-amazon.com/images/M/MV5BMjEyOTYyMzUxNl5BMl5BanBnXkFtZTcwNTg0MTUzNA@@._V1_SX1500_CR0,0,1500,999_AL_.jpg",
     "https://images-na.ssl-images-amazon.com/images/M/MV5BNzM2MDk3MTcyMV5BMl5BanBnXkFtZTcwNjg0MTUzNA@@._V1_SX1777_CR0,0,1777,999_AL_.jpg",
     "https://images-na.ssl-images-amazon.com/images/M/MV5BMTY2ODQ3NjMyMl5BMl5BanBnXkFtZTcwODg0MTUzNA@@._V1_SX1777_CR0,0,1777,999_AL_.jpg",
     "https://images-na.ssl-images-amazon.com/images/M/MV5BMTMxOTEwNDcxN15BMl5BanBnXkFtZTcwOTg0MTUzNA@@._V1_SX1777_CR0,0,1777,999_AL_.jpg",
     "https://images-na.ssl-images-amazon.com/images/M/MV5BMTYxMDg1Nzk1MV5BMl5BanBnXkFtZTcwMDk0MTUzNA@@._V1_SX1500_CR0,0,1500,999_AL_.jpg"
 );
 Language = "English, Spanish";
 Metascore = 83;
 Plot = "A paraplegic marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.";
 Poster = "http://ia.media-imdb.com/images/M/MV5BMTYwOTEwNjAzMl5BMl5BanBnXkFtZTcwODc5MTUwMw@@._V1_SX300.jpg";
 Rated = "PG-13";
 Released = "18 Dec 2009";
 Response = True;
 Runtime = "162 min";
 Title = Avatar;
 Type = movie;
 Writer = "James Cameron";
 Year = 2009;
 imdbID = tt0499549;
 imdbRating = "7.9";
 imdbVotes = "890,617";
}
 */
