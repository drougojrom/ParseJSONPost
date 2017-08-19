//
//  User.swift
//  ParseJSON
//
//  Created by Roman Ustiantcev on 15/08/2017.
//  Copyright © 2017 Roman Ustiantcev. All rights reserved.
//

import SwiftyJSON

public class User {
    
    public var firstName: String? = nil
    public var lastName: String? = nil
    public var email: String? = nil
    public var accessLevel: String? = nil
    public var lastPasswordChange: String? = nil
    public var authenticationId: String? = nil
    public var avatarURL: String? = nil
    public var location: Location? = nil
    
    public convenience init(json: JSON?) {
        self.init()
        
        if let json = json {
            update(json: json)
        }
        
    }
    
    func update(json: JSON) {
        
        if let firstName = json["firstName"].string {
            self.firstName = firstName
        }
        
        if let lastName = json["lastName"].string {
            self.lastName = lastName
        }
        
        if let id = json["id"].string {
            self.authenticationId = id
        }
        
        if let email = json["email"].string {
            self.email = email
        }
        
        if let accessLevel = json["accessLevel"].string {
            self.accessLevel = accessLevel
        }
        
        if let userAvatar = json["profileImageUrl"].string {
            self.avatarURL = userAvatar
        }
        
        if let lastPasswordChange = json["lastPasswordChangeDate"].string {
            self.lastPasswordChange = lastPasswordChange
        }
        
        self.location = Location(json: json["location"])
    }
}
