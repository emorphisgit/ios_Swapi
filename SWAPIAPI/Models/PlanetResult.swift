//
//	Result.swift
//
//	Create by Khushbu Bhawsar on 5/5/2022

import Foundation

public struct PlanetResult: Codable{

	var climate: String!
	var created: String!
	var diameter: String!
	var edited: String!
	var films: [String]!
	var gravity: String!
	var name: String!
	var orbitalPeriod: String!
	var population: String!
	var residents: [String]!
	var rotationPeriod: String!
	var surfaceWater: String!
	var terrain: String!
	var url: String!

     /**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String: Any]){
		climate = dictionary["climate"] as? String
		created = dictionary["created"] as? String
		diameter = dictionary["diameter"] as? String
		edited = dictionary["edited"] as? String
		films = dictionary["films"] as? [String]
		gravity = dictionary["gravity"] as? String
		name = dictionary["name"] as? String
		orbitalPeriod = dictionary["orbital_period"] as? String
		population = dictionary["population"] as? String
		residents = dictionary["residents"] as? [String]
		rotationPeriod = dictionary["rotation_period"] as? String
		surfaceWater = dictionary["surface_water"] as? String
		terrain = dictionary["terrain"] as? String
		url = dictionary["url"] as? String
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String: Any]
	{
		var dictionary = [String: Any]()
		if climate != nil{
			dictionary["climate"] = climate
		}
		if created != nil{
			dictionary["created"] = created
		}
		if diameter != nil{
			dictionary["diameter"] = diameter
		}
		if edited != nil{
			dictionary["edited"] = edited
		}
		if films != nil{
			dictionary["films"] = films
		}
		if gravity != nil{
			dictionary["gravity"] = gravity
		}
		if name != nil{
			dictionary["name"] = name
		}
		if orbitalPeriod != nil{
			dictionary["orbital_period"] = orbitalPeriod
		}
		if population != nil{
			dictionary["population"] = population
		}
		if residents != nil{
			dictionary["residents"] = residents
		}
		if rotationPeriod != nil{
			dictionary["rotation_period"] = rotationPeriod
		}
		if surfaceWater != nil{
			dictionary["surface_water"] = surfaceWater
		}
		if terrain != nil{
			dictionary["terrain"] = terrain
		}
		if url != nil{
			dictionary["url"] = url
		}
		return dictionary
	}
}
