//
//  String+extensions.swift
//  
//
//  Created by Jeremy Bannister on 12/27/21.
//

///
public extension String {
    
    ///
    func displayed (_ textStyle: TextStyle) -> some View {
        Text(self).textStyle(textStyle)
    }
}
