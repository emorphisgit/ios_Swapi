//
//	StarshipModel.swift
//
//	Create by Mukesh Yadav on 5/5/2022

import Foundation

public struct StarshipModel: Codable {

	var count: Int!
	var next: String!
	var previous: String!
	var results: [StarshipResult]!

	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		count = dictionary["count"] as? Int
		next = dictionary["next"] as? String
		previous = dictionary["previous"] as? String
		results = [StarshipResult]()
		if let resultsArray = dictionary["results"] as? [[String:Any]]{
			for dic in resultsArray{
				let value = StarshipResult(fromDictionary: dic)
				results.append(value)
			}
		}
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if count != nil{
			dictionary["count"] = count
		}
		if next != nil{
			dictionary["next"] = next
		}
		if previous != nil{
			dictionary["previous"] = previous
		}
		if results != nil{
			var dictionaryElements = [[String:Any]]()
			for resultsElement in results {
				dictionaryElements.append(resultsElement.toDictionary())
			}
			dictionary["results"] = dictionaryElements
		}
		return dictionary
	}

}
