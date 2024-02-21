//
//  Axis+extensions.swift
//  
//
//  Created by Jeremy Bannister on 1/18/22.
//

///
extension Axis: ExpressionErgonomic { }

///
@available(iOS 14.0, macOS 11.0, *)
extension Axis {
    
    ///
    public func defaultStackDescription(
        eagerOrLazy: EagerOrLazy = .eager
    ) -> StackDescription {
        
        ///
        StackAxis(self)
            .defaultStackDescription(
                eagerOrLazy: eagerOrLazy
            )
    }
}

///
extension Axis {
    
    ///
    public var correspondingAxisSet: Axis.Set {
        switch self {
        case .horizontal: return .horizontal
        case .vertical: return .vertical
        }
    }
}
