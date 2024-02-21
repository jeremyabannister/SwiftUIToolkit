//
//  Font_Design+extensions.swift
//  
//
//  Created by Jeremy Bannister on 7/27/22.
//

///
extension Font.Design: Codable {
    
    ///
    public func encode(to encoder: Encoder) throws {
        
        ///
        var container = encoder.singleValueContainer()
        
        ///
        if self.equals(.default) {
            try container.encode("default")
            
        }
        else if self.equals(.serif) {
            try container.encode("serif")
            
        }
        else if self.equals(.rounded) {
            try container.encode("rounded")
            
        }
        else if self.equals(.monospaced) {
            try container.encode("monospaced")
            
        }
        else {
            throw "Could not encode `Font.Weight` \(self)".asErrorMessage()
        }
    }
    
    ///
    public init(from decoder: Decoder) throws {
        
        ///
        switch try decoder
            .singleValueContainer()
            .decode(String.self) {
            
        ///
        case "default": self = .default
        case "serif": self = .serif
        case "rounded": self = .rounded
        case "monospaced": self = .monospaced
        case let string: throw "Cannot decode Font.Design from string: \(string)".asErrorMessage()
        }
    }
}
