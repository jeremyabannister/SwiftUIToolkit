//
//  CGSize+extensions.swift
//  
//
//  Created by Jeremy Bannister on 1/18/22.
//

///
extension CGSize: ExpressionErgonomic { }

///
public extension CGSize {
    
    ///
    static func square (_ sideLength: CGFloat) -> Self {
        .init(width: sideLength, height: sideLength)
    }
}
