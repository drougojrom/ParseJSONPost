import SwiftyJSON

public class Location {
    
    public var cityName: String?
    public var countryName: String?
    public var stateName: String?
    public var id: String?
    
    
    public convenience init(json: JSON) {
        self.init()
        
        guard !JSON.null.boolValue else {
            return
        }
        
        if let cityObject = json["city"].dictionary {
            
            stateName = cityObject["state"]?.string
            
            if let coutry = cityObject["country"]?.dictionary {
                self.countryName = coutry["name"]?.string
            }
            
            cityName = cityObject["name"]?.string
        }
        
        id = json["id"].string
    }
}

