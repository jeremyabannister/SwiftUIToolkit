//
//  View+expand.swift
//  
//
//  Created by Jeremy Bannister on 12/20/21.
//

///
public extension View {
    
    ///
    func expand (alignment: Alignment = .center) -> some View {
        ZStack(alignment: alignment) {
            Color.clear
            self
        }
    }
}
