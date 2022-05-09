//
//	Result.swift
//
//	Create by Mukesh Yadav on 5/5/2022

import Foundation

public struct StarshipResult: Codable {

	var mGLT: String!
	var cargoCapacity: String!
	var consumables: String!
	var costInCredits: String!
	var created: String!
	var crew: String!
	var edited: String!
	var films: [String]!
	var hyperdriveRating: String!
	var length: String!
	var manufacturer: String!
	var maxAtmospheringSpeed: String!
	var model: String!
	var name: String!
	var passengers: String!
	var pilots: [String]!
	var starshipClass: String!
	var url: String!

	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		mGLT = dictionary["MGLT"] as? String
		cargoCapacity = dictionary["cargo_capacity"] as? String
		consumables = dictionary["consumables"] as? String
		costInCredits = dictionary["cost_in_credits"] as? String
		created = dictionary["created"] as? String
		crew = dictionary["crew"] as? String
		edited = dictionary["edited"] as? String
		films = dictionary["films"] as? [String]
		hyperdriveRating = dictionary["hyperdrive_rating"] as? String
		length = dictionary["length"] as? String
		manufacturer = dictionary["manufacturer"] as? String
		maxAtmospheringSpeed = dictionary["max_atmosphering_speed"] as? String
		model = dictionary["model"] as? String
		name = dictionary["name"] as? String
		passengers = dictionary["passengers"] as? String
		pilots = dictionary["pilots"] as? [String]
		starshipClass = dictionary["starship_class"] as? String
		url = dictionary["url"] as? String
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if mGLT != nil{
			dictionary["MGLT"] = mGLT
		}
		if cargoCapacity != nil{
			dictionary["cargo_capacity"] = cargoCapacity
		}
		if consumables != nil{
			dictionary["consumables"] = consumables
		}
		if costInCredits != nil{
			dictionary["cost_in_credits"] = costInCredits
		}
		if created != nil{
			dictionary["created"] = created
		}
		if crew != nil{
			dictionary["crew"] = crew
		}
		if edited != nil{
			dictionary["edited"] = edited
		}
		if films != nil{
			dictionary["films"] = films
		}
		if hyperdriveRating != nil{
			dictionary["hyperdrive_rating"] = hyperdriveRating
		}
		if length != nil{
			dictionary["length"] = length
		}
		if manufacturer != nil{
			dictionary["manufacturer"] = manufacturer
		}
		if maxAtmospheringSpeed != nil{
			dictionary["max_atmosphering_speed"] = maxAtmospheringSpeed
		}
		if model != nil{
			dictionary["model"] = model
		}
		if name != nil{
			dictionary["name"] = name
		}
		if passengers != nil{
			dictionary["passengers"] = passengers
		}
		if pilots != nil{
			dictionary["pilots"] = pilots
		}
		if starshipClass != nil{
			dictionary["starship_class"] = starshipClass
		}
		if url != nil{
			dictionary["url"] = url
		}
		return dictionary
	}

}
