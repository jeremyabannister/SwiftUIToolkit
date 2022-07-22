//
//  CGFloat+extensions.swift
//  
//
//  Created by Jeremy Bannister on 1/12/22.
//

///
extension CGFloat: ExpressionErgonomic { }

///
public extension CGFloat {
    
    ///
    func divided (by dividend: CGFloat) -> Self {
        self / dividend
    }
}
