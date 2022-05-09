//
//	Result.swift
//
//	Create by Khushbu Bhawsar on 5/5/2022

import Foundation

public struct PeopleResult: Codable{

	var birthYear: String!
	var created: String!
	var edited: String!
	var eyeColor: String!
	var films: [String]!
	var gender: String!
	var hairColor: String!
	var height: String!
	var homeworld: String!
	var mass: String!
	var name: String!
	var skinColor: String!
	var species: [String]!
	var starships: [String]!
	var url: String!
	var vehicles: [String]!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		birthYear = dictionary["birth_year"] as? String
		created = dictionary["created"] as? String
		edited = dictionary["edited"] as? String
		eyeColor = dictionary["eye_color"] as? String
		films = dictionary["films"] as? [String]
		gender = dictionary["gender"] as? String
		hairColor = dictionary["hair_color"] as? String
		height = dictionary["height"] as? String
		homeworld = dictionary["homeworld"] as? String
		mass = dictionary["mass"] as? String
		name = dictionary["name"] as? String
		skinColor = dictionary["skin_color"] as? String
		species = dictionary["species"] as? [String]
		starships = dictionary["starships"] as? [String]
		url = dictionary["url"] as? String
		vehicles = dictionary["vehicles"] as? [String]
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if birthYear != nil{
			dictionary["birth_year"] = birthYear
		}
		if created != nil{
			dictionary["created"] = created
		}
		if edited != nil{
			dictionary["edited"] = edited
		}
		if eyeColor != nil{
			dictionary["eye_color"] = eyeColor
		}
		if films != nil{
			dictionary["films"] = films
		}
		if gender != nil{
			dictionary["gender"] = gender
		}
		if hairColor != nil{
			dictionary["hair_color"] = hairColor
		}
		if height != nil{
			dictionary["height"] = height
		}
		if homeworld != nil{
			dictionary["homeworld"] = homeworld
		}
		if mass != nil{
			dictionary["mass"] = mass
		}
		if name != nil{
			dictionary["name"] = name
		}
		if skinColor != nil{
			dictionary["skin_color"] = skinColor
		}
		if species != nil{
			dictionary["species"] = species
		}
		if starships != nil{
			dictionary["starships"] = starships
		}
		if url != nil{
			dictionary["url"] = url
		}
		if vehicles != nil{
			dictionary["vehicles"] = vehicles
		}
		return dictionary
	}

}
