//
//  APIManager.swift
//  SWAPIAPI
//
//  Created by kapil on 05/05/22.
//

import Foundation
import UIKit

// HTTP Header Field's for API's
private enum HTTPHeaderField: String {
    case contentType = "Content-Type"
    case authorization = "Authorization"
    case xapikey = "x-api-key"
}

// HTTP Header Value's for API's
private enum ContentType: String {
    case json = "application/json"
}

// MARK: - ProfileEndPoint Model
internal class MethodandPath: Codable {
    
    // MARK: - Variables
    internal var method: String
    internal var path: String
    
    init(method: String?, path: String?) {
        self.method = method!
        self.path = path!
    }
}

// Parameter Key's for all API's
private struct MethodNameandPath {
    static let planets = MethodandPath(method: "GET", path: "planets/")
    static let people = MethodandPath(method: "GET", path: "people/")
    static let films = MethodandPath(method: "GET", path: "films/")
    static let starships = MethodandPath(method: "GET", path: "starships/")
    static let vehicles = MethodandPath(method: "GET", path: "vehicles/")
    static let species = MethodandPath(method: "GET", path: "species/")
}

// Parameter Key's for all API's
private struct BaseUrls {
    static let baseurl = ApplicationManager.baseUrl
}

// Class contain Helper Methods Used in Overall Application Related to API Calls
class APIManager {
    
    public var session: URLSession
    init(session: URLSession = .shared) {
        self.session = session
    }
    
    // Singleton Instance
    static let shared = APIManager()
    
    private static func performRequest<T: Decodable>(baseurl: String, methodandpath: MethodandPath, parametersDict: NSDictionary? = [:], Id: Int = 0, completion: @escaping (Result<T, Error>) -> Void) {
                
        var urlRequest: URLRequest!
        var url: URL!
        let strUrl = "https://" + baseurl
        url = URL(string: strUrl + methodandpath.path)!
        urlRequest = URLRequest(url: url)
        print(urlRequest!)
        
        // HTTP Method
        urlRequest.httpMethod = methodandpath.method//method.rawValue
        
        // Common Headers
        urlRequest.setValue(ContentType.json.rawValue, forHTTPHeaderField: HTTPHeaderField.contentType.rawValue)
        
        if parametersDict!.count > 0 { // Check Parameters & Move Accordingly
            print(parametersDict as Any)
            if methodandpath.method == "GET" {
                var urlString = ""
                for (i, (keys, values)) in parametersDict!.enumerated() {
                    print("key value")
                    urlString += i == 0 ? "?\(keys)=\(values)" : "&\(keys)=\(values)"
                }
                // Append GET Parameters to URL
                var absoluteStr = url.absoluteString
                absoluteStr += urlString
                absoluteStr = absoluteStr.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
                urlRequest.url = URL(string: absoluteStr)!
            } else {
                urlRequest.httpBody = try? JSONSerialization.data(withJSONObject: parametersDict as Any, options: .fragmentsAllowed)
            }
        } else if Id != 0 {
            var absoluteStr = url.absoluteString
            absoluteStr += String(Id)
            absoluteStr = absoluteStr.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
            urlRequest.url = URL(string: absoluteStr)!
        }
        
        let task = shared.session.dataTask(with: urlRequest) { data, response, error in
            if let httpResponse = response as? HTTPURLResponse {
                if httpResponse.statusCode == 401 {
                    return
                }
            }
            guard let data = data, error == nil else { return }
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String: Any]
                // Get JSON, Clean it and Convert to Object
                let JSON = json
                JSON?.printJson()
                let cleanedJSON = cleanJSON(json: JSON!, isReturn: true)
                dictToObject(dict: cleanedJSON, type: T.self, completion: completion)
            } catch let error as NSError {
                print(error)
            }
        }
        task.resume()
    }
    
    static func getPlanets_api(queryParameters: NSDictionary, completion: @escaping (Result<PlanetsModel, Error>) -> Void) {
        // Call Planets API with API Router
        performRequest(baseurl: BaseUrls.baseurl, methodandpath: MethodNameandPath.planets, parametersDict: queryParameters, completion: completion)
    }
    
    static func getPlanetWithID_api(Id: Int, completion: @escaping (Result<PlanetResult, Error>) -> Void) {
        // Call Planets with ID with API Router
        performRequest(baseurl: BaseUrls.baseurl, methodandpath: MethodNameandPath.planets, Id: Id, completion: completion)
    }
    
    static func getPeople_api(queryParameters: NSDictionary, completion: @escaping (Result<PeopleModel, Error>) -> Void) {
        // Call People API with API Router
        performRequest(baseurl: BaseUrls.baseurl, methodandpath: MethodNameandPath.people, parametersDict: queryParameters, completion: completion)
    }
    
    static func getPeopleWithID_api(Id: Int, completion: @escaping (Result<PeopleResult, Error>) -> Void) {
        // Call People with ID with API Router
        performRequest(baseurl: BaseUrls.baseurl, methodandpath: MethodNameandPath.people, Id: Id, completion: completion)
    }
    
    static func getFilms_api(queryParameters: NSDictionary, completion: @escaping (Result<FilmsModel, Error>) -> Void) {
        // Call Film API with API Router
        performRequest(baseurl: BaseUrls.baseurl, methodandpath: MethodNameandPath.films, parametersDict: queryParameters, completion: completion)
    }
    
    static func getFilmWithID_api(Id: Int, completion: @escaping (Result<FilmsResult, Error>) -> Void) {
        // Call Film with ID with API Router
        performRequest(baseurl: BaseUrls.baseurl, methodandpath: MethodNameandPath.films, Id: Id, completion: completion)
    }
    
    static func getStarships_api(queryParameters: NSDictionary, completion: @escaping (Result<StarshipModel, Error>) -> Void) {
        // Call Film API with API Router
        performRequest(baseurl: BaseUrls.baseurl, methodandpath: MethodNameandPath.starships, parametersDict: queryParameters, completion: completion)
    }
    
    static func getStarshipWithID_api(Id: Int, completion: @escaping (Result<StarshipResult, Error>) -> Void) {
        // Call Film with ID with API Router
        performRequest(baseurl: BaseUrls.baseurl, methodandpath: MethodNameandPath.starships, Id: Id, completion: completion)
    }
    
    static func getVehicles_api(queryParameters: NSDictionary, completion: @escaping (Result<VehiclesModel, Error>) -> Void) {
        // Call Vehicle API with API Router
        performRequest(baseurl: BaseUrls.baseurl, methodandpath: MethodNameandPath.vehicles, parametersDict: queryParameters, completion: completion)
    }
    
    static func getVehicleWithID_api(Id: Int, completion: @escaping (Result<VehicleResult, Error>) -> Void) {
        // Call Vehicle with ID with API Router
        performRequest(baseurl: BaseUrls.baseurl, methodandpath: MethodNameandPath.vehicles, Id: Id, completion: completion)
    }
    
    static func getSpecies_api(queryParameters: NSDictionary, completion: @escaping (Result<SpeciesModel, Error>) -> Void) {
        // Call Vehicle API with API Router
        performRequest(baseurl: BaseUrls.baseurl, methodandpath: MethodNameandPath.species, parametersDict: queryParameters, completion: completion)
    }
    
    static func getSpecieWithID_api(Id: Int, completion: @escaping (Result<SpecieResult, Error>) -> Void) {
        // Call Vehicle with ID with API Router
        performRequest(baseurl: BaseUrls.baseurl, methodandpath: MethodNameandPath.species, Id: Id, completion: completion)
    }
        
    // MARK: - Private Class Methods
    
    // Recursive Method
    @discardableResult
    static private func cleanJSON(json: Dictionary<String, Any>, isReturn: Bool = false) -> Dictionary<String, Any> {
        
        // Create Local Object to Mutate
        var actualJson = json
        
        // Iterate Over All Pairs
        for (key, value) in actualJson {
            
            if let dict = value as? Dictionary<String, Any> { // If Value is Dictionary then call itself with new value
                cleanJSON(json: dict)
            } else if let array = value as? [Dictionary<String, Any>] {
                
                // If Value is Array then call itself according to number of elements
                for element in array {
                    cleanJSON(json: element)
                }
            }
            
            // If value if not null then move inside
            if !(value is NSNull) {
                
                // If value is "_null" String then remove it
                if let text = value as? String, text == "_null" {
                    actualJson.removeValue(forKey: key)
                }
            } else {
                
                // remove null value
                actualJson.removeValue(forKey: key)
            }
        }
        
        // If called with isReturn as true then only return actual object
        if isReturn {
            return actualJson
        } else { // else return dummy object
            return Dictionary<String, Any>()
        }
    }
    
    static private func dictToObject <T: Decodable>(dict: Dictionary<String, Any>, type: T.Type, completion: @escaping (Result<T, Error>) -> Void) {
        do {
            // Convert Dictionary to JSON Data
            let jsonData = try JSONSerialization.data(withJSONObject: dict, options: .prettyPrinted)
            
            // Decode data to model object
            let jsonDecoder = JSONDecoder()
            let object = try jsonDecoder.decode(type, from: jsonData)
            
            // response with model object
            completion(.success(object))
        } catch let error { // response with error
            completion(.failure(error))
        }
    }
}

// We create a partial mock by subclassing the original class
class URLSessionDataTaskMock: URLSessionDataTask {
    private let closure: () -> Void
    
    init(closure: @escaping () -> Void) {
        self.closure = closure
    }
    
    // We override the 'resume' method and simply call our closure
    // instead of actually resuming any task.
    override func resume() {
        closure()
    }
}

class URLSessionMock: URLSession {
    typealias CompletionHandler = (Data?, URLResponse?, Error?) -> Void
    
    // Properties that enable us to set exactly what data or error
    // we want our mocked URLSession to return for any request.
    var data: Data?
    var error: Error?
    
    override func dataTask(
        with url: URLRequest,
        completionHandler: @escaping CompletionHandler
    ) -> URLSessionDataTask {
        let data = self.data
        let error = self.error
        
        return URLSessionDataTaskMock {
            completionHandler(data, nil, error)
        }
    }
}
