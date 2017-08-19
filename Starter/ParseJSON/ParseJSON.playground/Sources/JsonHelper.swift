import Foundation
import SwiftyJSON

public func getJSON() -> JSON {
    var json: JSON!
    
    if let path = Bundle.main.path(forResource: "test", ofType: "json") {
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .alwaysMapped)
            json = JSON(data: data)
            return json
        } catch let error {
            print(error)
        }
    }
    return json
}
