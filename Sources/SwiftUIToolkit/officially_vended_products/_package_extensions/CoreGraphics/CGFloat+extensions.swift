//
//  CGFloat+extensions.swift
//  
//
//  Created by Jeremy Bannister on 1/12/22.
//

///
extension CGFloat: @retroactive ExpressionErgonomic { }

///
extension CGFloat {
    
    ///
    public func divided(by dividend: CGFloat) -> Self {
        self / dividend
    }
}
