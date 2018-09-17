import UIKit

enum Weapon {
    case ump9, vector, m416, scarL, akm
}

class Gun {
    let name: String
    let description: String
    let iconName: String
    let weapon: Weapon
    
    init(name: String, description: String, iconName: String, weapon: Weapon) {
        self.name = name
        self.description = description
        self.iconName = iconName
        self.weapon = weapon
    }
    
    var weaponImage: UIImage {
        switch weapon {
        case .ump9:
            return UIImage(named: "ump9.png")!
        case .vector:
            return UIImage(named: "vector.png")!
        case .m416:
            return UIImage(named: "m416.png")!
        case .scarL:
            return UIImage(named: "scarL.png")!
        case .akm:
            return UIImage(named: "akm.png")!
        }
    }
    
    var icon: UIImage? {
        return UIImage(named: iconName)
    }
}

