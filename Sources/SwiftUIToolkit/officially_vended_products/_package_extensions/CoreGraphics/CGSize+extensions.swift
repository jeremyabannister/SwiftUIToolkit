//
//  CGSize+extensions.swift
//  
//
//  Created by Jeremy Bannister on 1/18/22.
//

///
extension CGSize: @retroactive ExpressionErgonomic { }

///
extension CGSize {
    
    ///
    public static func square(_ sideLength: CGFloat) -> Self {
        .init(width: sideLength, height: sideLength)
    }
}

///
extension CGSize {
    
    ///
    public var aspectRatio: CGFloat {
        width/height
    }
}
