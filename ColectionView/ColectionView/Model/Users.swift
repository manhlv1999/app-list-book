import Foundation
class User {
    var avatar = ""
    var name = ""
    
    init(avatar: String, name: String){
        self.avatar = avatar
        self.name = name
    }
    class func getList() -> [User] {
        return [
            User(avatar: "icon_avatar", name: "User 1"),
            User(avatar: "icon_avatar", name: "User 2"),
            User(avatar: "icon_avatar", name: "User 3"),
            User(avatar: "icon_avatar", name: "User 4"),
            User(avatar: "icon_avatar", name: "User 5"),
            User(avatar: "icon_avatar", name: "User 6"),
            User(avatar: "icon_avatar", name: "User 7"),
            User(avatar: "icon_avatar", name: "User 8"),
            User(avatar: "icon_avatar", name: "User 9"),
            User(avatar: "icon_avatar", name: "User 10"),
            User(avatar: "icon_avatar", name: "User 11"),
            User(avatar: "icon_avatar", name: "User 12"),
            User(avatar: "icon_avatar", name: "User 13"),
            User(avatar: "icon_avatar", name: "User 14"),
            User(avatar: "icon_avatar", name: "User 15"),
            User(avatar: "icon_avatar", name: "User 16"),
            User(avatar: "icon_avatar", name: "User 17"),
            User(avatar: "icon_avatar", name: "User 18"),
            User(avatar: "icon_avatar", name: "User 19"),
            User(avatar: "icon_avatar", name: "User 20"),
            
        ]
    }
}
