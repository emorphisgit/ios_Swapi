//
//  SwapiApiManager.swift
//  SWAPIAPI
//
//  Created by kapil on 05/05/22.
//

import Foundation
import UIKit

public class SwapiApiCall {
    
    // Singleton Instance
    public static var getInstance = SwapiApiCall()

    private init() {}
    
    public func getPlanets(input_parameters: [String: AnyHashable], completion: @escaping (Bool, PlanetsModel?) -> Void) {
        APIManager.getPlanets_api(queryParameters: input_parameters as NSDictionary) { result in
            switch result {
                case .success(let response):
                    completion(true, response)
                case .failure(let error):
                    print(error)
                    completion(false, nil)
            }
        }
    }
    
    public func getPlanetWithID(planetId: Int, completion: @escaping (Bool, PlanetResult?) -> Void) {
        APIManager.getPlanetWithID_api(Id: planetId) { result in
            switch result {
                case .success(let response):
                    completion(true, response)
                case .failure(let error):
                    print(error)
                    completion(false, nil)
            }
        }
    }
    
    public func getPeoples(input_parameters: [String: AnyHashable], completion: @escaping (Bool, PeopleModel?) -> Void) {
        APIManager.getPeople_api(queryParameters: input_parameters as NSDictionary) { result in
            switch result {
                case .success(let response):
                    completion(true, response)
                case .failure(let error):
                    print(error)
                    completion(false, nil)
            }
        }
    }
    
    public func getPeopleWithID(peopleId: Int, completion: @escaping (Bool, PeopleResult?) -> Void) {
        APIManager.getPeopleWithID_api(Id: peopleId) { result in
            switch result {
                case .success(let response):
                    completion(true, response)
                case .failure(let error):
                    print(error)
                    completion(false, nil)
            }
        }
    }
    
    public func getFilms(input_parameters: [String: AnyHashable], completion: @escaping (Bool, FilmsModel?) -> Void) {
        APIManager.getFilms_api(queryParameters: input_parameters as NSDictionary) { result in
            switch result {
                case .success(let response):
                    completion(true, response)
                case .failure(let error):
                    print(error)
                    completion(false, nil)
            }
        }
    }
    
    public func getFilmWithID(filmId: Int, completion: @escaping (Bool, FilmsResult?) -> Void) {
        APIManager.getFilmWithID_api(Id: filmId) { result in
            switch result {
                case .success(let response):
                    completion(true, response)
                case .failure(let error):
                    print(error)
                    completion(false, nil)
            }
        }
    }
    
    public func getStarships(input_parameters: [String: AnyHashable], completion: @escaping (Bool, StarshipModel?) -> Void) {
        APIManager.getStarships_api(queryParameters: input_parameters as NSDictionary) { result in
            switch result {
                case .success(let response):
                    completion(true, response)
                case .failure(let error):
                    print(error)
                    completion(false, nil)
            }
        }
    }
    
    public func getStarshipWithID(starshipId: Int, completion: @escaping (Bool, StarshipResult?) -> Void) {
        APIManager.getStarshipWithID_api(Id: starshipId) { result in
            switch result {
                case .success(let response):
                    completion(true, response)
                case .failure(let error):
                    print(error)
                    completion(false, nil)
            }
        }
    }
    
    public func getVehicles(input_parameters: [String: AnyHashable], completion: @escaping (Bool, VehiclesModel?) -> Void) {
        APIManager.getVehicles_api(queryParameters: input_parameters as NSDictionary) { result in
            switch result {
                case .success(let response):
                    completion(true, response)
                case .failure(let error):
                    print(error)
                    completion(false, nil)
            }
        }
    }
    
    public func getVehicleWithID(vehicleId: Int, completion: @escaping (Bool, VehicleResult?) -> Void) {
        APIManager.getVehicleWithID_api(Id: vehicleId) { result in
            switch result {
                case .success(let response):
                    completion(true, response)
                case .failure(let error):
                    print(error)
                    completion(false, nil)
            }
        }
    }
    
    public func getSpecies(input_parameters: [String: AnyHashable], completion: @escaping (Bool, SpeciesModel?) -> Void) {
        APIManager.getSpecies_api(queryParameters: input_parameters as NSDictionary) { result in
            switch result {
                case .success(let response):
                    completion(true, response)
                case .failure(let error):
                    print(error)
                    completion(false, nil)
            }
        }
    }
    
    public func getSpecieWithID(specieId: Int, completion: @escaping (Bool, SpecieResult?) -> Void) {
        APIManager.getSpecieWithID_api(Id: specieId) { result in
            switch result {
                case .success(let response):
                    completion(true, response)
                case .failure(let error):
                    print(error)
                    completion(false, nil)
            }
        }
    }
}
