//: A UIKit based Playground for presenting user interface
  
import UIKit
import SwiftyJSON

let json = getJSON()

let user = User(json: json)

if let userName = user.firstName {
    print(userName)
}

let location = user.location
    
if let city = location?.cityName {
    print(city)
}
