//Define an Enum, called AppleDevice with the following cases:
//- iPhoneXs
//- iPhoneXR
//- iPhone8
//- iPhone7
//
//
//Add a computed property to the enum which returns the price of each of the above item. Here is
//the list of price (in $):
//
//- iPhoneXs: 1000
//- iPhoneXR: 1100
//- iPhone8: 800
//- iPhone7: 750

enum AppleDevice {
    
    case iPhoneXs
    case iphoneXR
    case iPhone8
    case iPhone7
    
    var Price: String {
        
        get{ switch self {
            
        case .iPhoneXs:
            return "$ 1000"
        case .iphoneXR:
            return "$ 1100"
        case .iPhone8:
            return "$ 800"
        case .iPhone7:
            return "$ 750"
            
        }
        
        }
        
    }
    
}
func main(){
    
    let IphoneXsPrice = AppleDevice.iPhoneXs.Price
    print("\(IphoneXsPrice)")
}
main()
