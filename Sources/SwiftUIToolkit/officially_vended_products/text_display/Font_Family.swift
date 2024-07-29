//
//  Font_Family.swift
//  
//
//  Created by Jeremy Bannister on 12/27/21.
//

///
extension Font {
    
    ///
    public enum Family:
        ValueType,
        Codable {
        
        ///
        case system
        
        ///
        case custom(String)
    }
}
