//
//  CGRect+extensions.swift
//  
//
//  Created by Jeremy Bannister on 1/18/22.
//

extension CGRect: @retroactive ExpressionErgonomic { }

extension CGRect {
    public var leadingPoint: CGPoint {
        .init(x: minX, y: midY)
    }
    
    public var topLeadingPoint: CGPoint {
        .init(x: minX, y: minY)
    }
    
    public var topPoint: CGPoint {
        .init(x: midX, y: minY)
    }
    
    public var topTrailingPoint: CGPoint {
        .init(x: maxX, y: minY)
    }
    
    public var trailingPoint: CGPoint {
        .init(x: maxX, y: midY)
    }
    
    public var bottomTrailingPoint: CGPoint {
        .init(x: maxX, y: maxY)
    }
    
    public var bottomPoint: CGPoint {
        .init(x: midX, y: maxY)
    }
    
    public var bottomLeadingPoint: CGPoint {
        .init(x: minX, y: maxY)
    }
}
