//
//	Result.swift
//
//	Create by Mukesh Yadav on 6/5/2022

import Foundation

public struct SpecieResult: Codable {

	var averageHeight: String!
	var averageLifespan: String!
	var classification: String!
	var created: String!
	var designation: String!
	var edited: String!
	var eyeColors: String!
	var films: [String]!
	var hairColors: String!
	var homeworld: String!
	var language: String!
	var name: String!
	var people: [String]!
	var skinColors: String!
	var url: String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		averageHeight = dictionary["average_height"] as? String
		averageLifespan = dictionary["average_lifespan"] as? String
		classification = dictionary["classification"] as? String
		created = dictionary["created"] as? String
		designation = dictionary["designation"] as? String
		edited = dictionary["edited"] as? String
		eyeColors = dictionary["eye_colors"] as? String
		films = dictionary["films"] as? [String]
		hairColors = dictionary["hair_colors"] as? String
		homeworld = dictionary["homeworld"] as? String
		language = dictionary["language"] as? String
		name = dictionary["name"] as? String
		people = dictionary["people"] as? [String]
		skinColors = dictionary["skin_colors"] as? String
		url = dictionary["url"] as? String
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if averageHeight != nil{
			dictionary["average_height"] = averageHeight
		}
		if averageLifespan != nil{
			dictionary["average_lifespan"] = averageLifespan
		}
		if classification != nil{
			dictionary["classification"] = classification
		}
		if created != nil{
			dictionary["created"] = created
		}
		if designation != nil{
			dictionary["designation"] = designation
		}
		if edited != nil{
			dictionary["edited"] = edited
		}
		if eyeColors != nil{
			dictionary["eye_colors"] = eyeColors
		}
		if films != nil{
			dictionary["films"] = films
		}
		if hairColors != nil{
			dictionary["hair_colors"] = hairColors
		}
		if homeworld != nil{
			dictionary["homeworld"] = homeworld
		}
		if language != nil{
			dictionary["language"] = language
		}
		if name != nil{
			dictionary["name"] = name
		}
		if people != nil{
			dictionary["people"] = people
		}
		if skinColors != nil{
			dictionary["skin_colors"] = skinColors
		}
		if url != nil{
			dictionary["url"] = url
		}
		return dictionary
	}

}
