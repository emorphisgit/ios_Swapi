# SWAPI-IOS-SDK

This repository contains the code for the Swapi library.

# Prerequisite

iOS - Requires IOS 11.0 or above.

Xcode - Version 13.0 or above

# Installation

1. Open Xcode.
2. Open pods file
3. Paste  pod 'SWAPIAPI', :git => 'https://github.com/emorphisgit/ios_Swapi' in your pod file
4. Install pods

# How to use it

Import SWAPIAPI in your view controller class


Define the global instance of SWAPIAPI SDK -  SWAPIAPI SDK follows singleton pattern so you need to initialise it once
```sh
let swapiapicall = SwapiApiCall.getInstance
```
In your view controller you may fire every API call you want.

**People**
A People resource is an individual person or character within the Star Wars universe.

**/people/** -- get all the people resources

    swapiapicall.getPeoples(input_parameters: ["search": "Luke", "page": "1"]) { success, response in
        if success {
            print(response as Any)
        } else {
            print("error")
        }    
    }

**/people/:id/** -- get a specific people resource

    swapiapicall.getPeopleWithID(peopleId: 1) { success, response in
        if success {
            print(response as Any)
        } else {
            print("error")
        }    
    }

**Films**
A Film resource is a single film.

**/films/** -- get all the film resources

    swapiapicall.getFilms(input_parameters: ["search": "Luke", "page": "1"]) { success, response in
        if success {
            print(response as Any)
        } else {
            print("error")
        }    
    }

**/films/:id/** -- get a specific film resource

    swapiapicall.getFilmWithID(filmId: 1){ success, response in
        if success {
            print(response as Any)
        } else {
            print("error")
        }
    }

**Starships**
A Starship resource is a single transport craft that has hyperdrive capability.

**/starships/** -- get all the starship resources

    swapiapicall.getStarships(input_parameters: [:]){ success, response in
        if success {
            print(response as Any)
        } else {
            print("error")
        }
    }


**/starships/:id/** -- get a specific starship resource

    swapiapicall.getStarshipWithID(starshipId: 9){ success, response in
        if success {
            print(response as Any)
        } else {
            print("error")
        }
    }

**Vehicles**

**/vehicles/** -- get all the vehicle resources

    swapiapicall.getVehicles(input_parameters: [:]){ success, response in
        if success {
            print(response as Any)
        } else {
            print("error")
        }
    }

**/vehicles/:id/** -- get a specific vehicle resource

    swapiapicall.getVehicleWithID(vehicleId: 4){ success, response in
        if success {
            print(response as Any)
        } else {
            print("error")
        }
    }

**Species**

**/species/** -- get all the specie resources

    swapiapicall.getSpecies(input_parameters: [:]){ success, response in
        if success {
            print(response as Any)
        } else {
            print("error")
        }
    }

**/species/:id/** -- get a specific species resource

    swapiapicall.getSpecieWithID(specieId: 1){ success, response in
        if success {
            print(response as Any)
        } else {
            print("error")
        }
    }

**Planets**

**/planets/** -- get all the planet resources

    swapiapicall.getPlanets(input_parameters: [:]){ success, response in
        if success {
            print(response as Any)
        } else {
            print("error")
        }
    }

**/planets/:id/** -- get a specific planets resource

    swapiapicall.getPlanetWithID(planetId: 1){ success, response in
        if success {
            print(response as Any)
        } else {
            print("error")
        }
    }

#Getting Started

        Install Xcode, if you don't already have it. 
        Download the sample. 
        Import the sample into Xcode 
        Build and run the sample. 
