//
//  APICaller.swift
//  project_phoenix
//
//  Created by Erkin Gönültaş on 1.08.2023.
//

import Foundation

struct Constants {
    static let API_KEY = "API_KEY"
    static let BASE_URL = "BASE_URL"
    static let MOCK_TRENDING_URL = "https://gist.githubusercontent.com/saniyusuf/406b843afdfb9c6a86e25753fe2761f4/raw/523c324c7fcc36efab8224f9ebb7556c09b69a14/Film.JSON"
    static let MOCK_DISCOVER_URL = "https://gist.githubusercontent.com/Urdzik/de477f8e3d7baf4366c9d797cfe63531/raw/38c6afa2937ef222323392cc34c8c8c77e02fc40/Movie.json"
}

enum APIError: Error {
    case failedToGetData
}

class APICaller {
    static let shared = APICaller()
    
    func getTrendingMovies(completion: @escaping (Result<[Movie], Error>) -> Void ){
//        guard let url = URL(string: "\(Constants.BASE_URL)/3/trending/movie/day?api_key=\(Constants.API_KEY)") else {return}
        
        guard let url = URL(string: Constants.MOCK_TRENDING_URL) else {return}
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url), completionHandler: {data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let results = try JSONDecoder().decode([Movie].self, from: data)
                completion(.success(results) )
//                print(results as Any)
            } catch {
//                print(String(describing: error))
                completion(.failure(error))
            }
        })
        task.resume()
    }
    
    func getDiscoverMovies(completion: @escaping (Result<[Movie], Error>)-> Void){
        guard let url = URL(string: Constants.MOCK_TRENDING_URL) else {return}
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url), completionHandler: {data,_,error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let results = try JSONDecoder().decode([Movie].self, from: data)
                completion(.success(results))
            } catch {
                completion(.failure(error))
            }
        })
        task.resume()
    }
}
