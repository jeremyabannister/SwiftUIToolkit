//
//  TextAlignment.swift
//  
//
//  Created by Jeremy Bannister on 7/27/22.
//

///
extension TextAlignment: Codable {
    
    ///
    public func encode (to encoder: Encoder) throws {
        
        ///
        var container = encoder.singleValueContainer()
        
        ///
        if self.equals(.leading) {
            try container.encode("leading")
            
        } else if self.equals(.center) {
            try container.encode("center")
            
        } else if self.equals(.trailing) {
            try container.encode("trailing")
            
        } else {
            throw "Could not encode `TextAlignment` \(self)".asErrorMessage()
        }
    }
    
    ///
    public init (from decoder: Decoder) throws {
        
        ///
        switch try decoder
            .singleValueContainer()
            .decode(String.self) {
            
        ///
        case "leading": self = .leading
        case "center": self = .center
        case "trailing": self = .trailing
        case let x: throw "Could not decode TextAlignment from: \(x)".asErrorMessage()
        }
    }
}
