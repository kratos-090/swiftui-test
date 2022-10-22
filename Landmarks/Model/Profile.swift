
import Foundation


struct Profile{
    var username:String
    var prefersNotifications=true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username: "rohitkv090")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring="🌹"
        case summer="🌞"
        case autumn = "🍂"
        case winter = "☃️"
        case test="🐱"
        
        var id:String{rawValue}
    }
    
    
    
}
