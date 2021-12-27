//
//  View+extensions.swift
//  
//
//  Created by Jeremy Bannister on 12/27/21.
//

///
public extension View {
    
    ///
    func nullify (if predicate: (Self)->Bool) -> Self? {
        nullify(if: predicate(self))
    }
    
    ///
    func nullify (if condition: Bool) -> Self? {
        condition ? nil : self
    }
}
