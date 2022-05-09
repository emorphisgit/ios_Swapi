SWAPI-IOS-SDK
This repository contains the code for the Swapi library.

IOS Version
The iOS version of this 13.0 and above is available under the branch of this repository.

Pre-requisites
Make sure Xcode is updated, as well as your SDK. Otherwise, you may have to wait for a while until all the updates are done.
A device or emulator that runs API.

How to use it
    •    Create a separate library of SWAPI and add library in build. App folder.
              implementation project (path: ':SWAPIAPI')
    •     Base Request URL:- https://swapi.dev/api/      
    •    Import and call the SWAPIAPI client services.
                               var swapiapicall = SwapiApiCall.getInstance
    •    In your viewcontroller  you may fire every API call you want.

People
A People resource is an individual person or character within the Star Wars universe.
Endpoints
    •    /people/ -- get all the people resources
                        swapiapicall.getPeoples(input_parameters: ["search": "Luke", "page": "1"]) { success, response in
             if success {    
                 print(response as Any)
             } else {
                print("error")
            }    
        }

    •    /people/:id/ -- get a specific people resource
         swapiapicall.getPeopleWithID(peopleId: 1) { success, response in
             if success {    
                 print(response as Any)
             } else {
                print("error")
            }    
        }

Getting Started
    •    Install Xcode, if you don't already have it.
    •    Download the sample.
    •    Import the sample into Xcode.
    •    Build and run the sample.


