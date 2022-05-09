//
//	Result.swift
//
//	Create by Mukesh Yadav on 5/5/2022

import Foundation

public struct FilmsResult: Codable {

	var characters: [String]!
	var created: String!
	var director: String!
	var edited: String!
	var episodeId: Int!
	var openingCrawl: String!
	var planets: [String]!
	var producer: String!
	var releaseDate: String!
	var species: [String]!
	var starships: [String]!
	var title: String!
	var url: String!
	var vehicles: [String]!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		characters = dictionary["characters"] as? [String]
		created = dictionary["created"] as? String
		director = dictionary["director"] as? String
		edited = dictionary["edited"] as? String
		episodeId = dictionary["episode_id"] as? Int
		openingCrawl = dictionary["opening_crawl"] as? String
		planets = dictionary["planets"] as? [String]
		producer = dictionary["producer"] as? String
		releaseDate = dictionary["release_date"] as? String
		species = dictionary["species"] as? [String]
		starships = dictionary["starships"] as? [String]
		title = dictionary["title"] as? String
		url = dictionary["url"] as? String
		vehicles = dictionary["vehicles"] as? [String]
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if characters != nil{
			dictionary["characters"] = characters
		}
		if created != nil{
			dictionary["created"] = created
		}
		if director != nil{
			dictionary["director"] = director
		}
		if edited != nil{
			dictionary["edited"] = edited
		}
		if episodeId != nil{
			dictionary["episode_id"] = episodeId
		}
		if openingCrawl != nil{
			dictionary["opening_crawl"] = openingCrawl
		}
		if planets != nil{
			dictionary["planets"] = planets
		}
		if producer != nil{
			dictionary["producer"] = producer
		}
		if releaseDate != nil{
			dictionary["release_date"] = releaseDate
		}
		if species != nil{
			dictionary["species"] = species
		}
		if starships != nil{
			dictionary["starships"] = starships
		}
		if title != nil{
			dictionary["title"] = title
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
