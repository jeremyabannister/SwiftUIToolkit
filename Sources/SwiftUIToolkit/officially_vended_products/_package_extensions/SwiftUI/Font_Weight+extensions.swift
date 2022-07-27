//
//  Font_Weight+extensions.swift
//  
//
//  Created by Jeremy Bannister on 7/27/22.
//

///
extension Font.Weight: Codable {
    
    ///
    public func encode (to encoder: Encoder) throws {
        
        ///
        var container = encoder.singleValueContainer()
        
        ///
        switch self {
        case .ultraLight: try container.encode("ultraLight")
        case .thin: try container.encode("thin")
        case .light: try container.encode("light")
        case .regular: try container.encode("regular")
        case .medium: try container.encode("medium")
        case .semibold: try container.encode("semibold")
        case .bold: try container.encode("bold")
        case .heavy: try container.encode("heavy")
        case .black: try container.encode("black")
        default: throw "Could not encode Font.Weight: \(self)".asErrorMessage()
        }
    }
    
    ///
    public init (from decoder: Decoder) throws {
        
        ///
        switch try decoder
            .singleValueContainer()
            .decode(String.self) {
            
        ///
        case "ultraLight": self = .ultraLight
        case "thin": self = .thin
        case "light": self = .light
        case "regular": self = .regular
        case "medium": self = .medium
        case "semibold": self = .semibold
        case "bold": self = .bold
        case "heavy": self = .heavy
        case "black": self = .black
        case let string: throw "Cannot decode Font.Weight from string: \(string)".asErrorMessage()
        }
    }
}
