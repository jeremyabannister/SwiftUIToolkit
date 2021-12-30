//
//  Color+extensions.swift
//  
//
//  Created by Jeremy Bannister on 12/30/21.
//

///
public extension Color {
    
    ///
    init (_ r255: Double,
          _ g255: Double,
          _ b255: Double) {
        
        self.init(
            red: r255/255.0,
            green: g255/255.0,
            blue: b255/255.0
        )
    }
}
